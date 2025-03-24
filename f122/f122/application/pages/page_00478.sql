prompt --application/pages/page_00478
begin
--   Manifest
--     PAGE: 00478
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
 p_id=>478
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Armado de Equipos - STARDETE'
,p_alias=>'ARMADO-DE-EQUIPOS-STARDETE'
,p_step_title=>'Armado de Equipos - STARDETE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDisable_Enable(){',
'var vControl = apex.item(''P478_IND_PROCESO'').getValue();',
'var vEstado = apex.item(''P478_ESTADO'').getValue();',
'//alert(vControl);',
'if (vControl == "S" || vEstado == ''CREADO''){',
'    document.getElementById("BTPRO").disabled = true;    ',
'}else{',
'    document.getElementById("BTPRO").disabled = false;',
' }',
'}',
'',
'function validateNumber(event) {',
'  var keyCode = event.keyCode;',
unistr('  var excludedKeys = [8, 37, 39, 46,9];//Teclas extra que queremos que el campo acepte aparte de los n\00FAmeros, como el backspace'),
unistr('//Realizamos la validaci\00F3n de la tecla ingresada'),
'  if (!((keyCode >= 48 && keyCode <= 57) ||',
'      (keyCode >= 96 && keyCode <= 105) ||',
'      (excludedKeys.includes(keyCode)))) {',
'    event.preventDefault();',
'',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230419083919'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141941959899064511)
,p_plug_name=>'Armado de Equipos - STARDETE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141943618133064528)
,p_plug_name=>'Contenedor 1'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141943784630064529)
,p_plug_name=>'Contenedor 1.1'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
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
 p_id=>wwv_flow_imp.id(141943869586064530)
,p_plug_name=>'Contenedor 1.2'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141943986572064531)
,p_plug_name=>'Contenedor 1.3'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143219907426873842)
,p_plug_name=>'COLEC_ST_CAMBIOS_CODIGOS_DET'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPRESA,',
'       c002 TIP_ENT_SAL,',
'       c003 SER_ENT_SAL,',
'       c004 NUM_ENT_SAL,',
'       c005 COD_ARTICULO,',
'       c006 COD_ARTICULO_ENTRADA,',
'       c007 COD_ART_CORTO,',
'       c008 COD_ART_CORTO_ENTRADA,',
'       TO_NUMBER(c009) TOTAL_COSTO_SAC_GS,',
'       TO_NUMBER(c010) TOTAL_COSTO_SAC_US,',
'       TO_NUMBER(c011) TOTAL_COSTO_OPN_GS,',
'       TO_NUMBER(c012) TOTAL_COSTO_OPN_US,',
'       TO_NUMBER(c013) TOTAL_ENTRADA_COSTO_OPN_GS,',
'       TO_NUMBER(c014) TOTAL_ENTRADA_COSTO_OPN_US,',
'       TO_NUMBER(c015) TOTAL_ENTRADA_COSTO_SAC_US,',
'       TO_NUMBER(c016) COSTO,',
'       TO_NUMBER(c017) COSTO_ARMADO_GS,',
'       TO_NUMBER(c018) COSTO_USD,',
'       TO_NUMBER(c019) COSTO_OPN_USD,',
'       TO_NUMBER(c020) COSTO_AGREGADO_UNIDAD,',
'       TO_NUMBER(c021) COSTO_ARMADO_COEFICIENTE,',
'       TO_NUMBER(c022) COSTO_ARMADO_USD,',
'       TO_NUMBER(c023) PRECIO_ARMADO,',
'       TO_NUMBER(c024) PRECIO_VERIFICACION,',
'       TO_NUMBER(c025) COSTO_ARMADO_OPN_USD,',
'       c026 CANTIDAD,',
'       c027 COD_SUCURSAL,',
'       c028 COD_UNIDAD_MEDIDA,',
'       c029 CANTIDAD_UB,',
'       c030 CONFIRMADO,',
'       c031 COD_IVA,',
'       c032 NRO_LOTE,',
'       c033 FEC_VENCIMIENTO,',
'       c034 OBSERVACION,',
'       c035 PRECIO_VENTA,',
'       TO_NUMBER(c036) COSTO_GS,',
'       TO_NUMBER(c037) COSTO_US,',
'       c038 TIP_CAMBIO_US,',
'       c039 IND_PRECIO,',
'       c040 PRECIO_LISTA,',
'       TO_NUMBER(c041) COSTO_ARMADO_OPN,',
'       TO_NUMBER(c042) TOTAL_ENTRADA_COSTO_SAC_GS,',
'       c043 CONTROL,',
'       c044 ROW_ID,',
'       NULL DETALLE,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COLEC_ST_CAMBIOS_CODIGOS_DET''',
'   AND (c043 = ''U'' OR c043 = ''I'' OR c043 IS NULL)',
' ORDER BY seq_id DESC',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'COLEC_ST_CAMBIOS_CODIGOS_DET'
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
 p_id=>wwv_flow_imp.id(143601318297479530)
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
,p_internal_uid=>143601318297479530
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143601435799479531)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143601579063479532)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143601642923479533)
,p_db_column_name=>'TIP_ENT_SAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Ent Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143601781331479534)
,p_db_column_name=>'SER_ENT_SAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Ent Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143601861217479535)
,p_db_column_name=>'NUM_ENT_SAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Num Ent Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143601941078479536)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Art\00EDculo Desarmado')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143602012225479537)
,p_db_column_name=>'COD_ARTICULO_ENTRADA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Art\00EDculo Armado')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143602180728479538)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod  Corto Desarmado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143602224894479539)
,p_db_column_name=>'COD_ART_CORTO_ENTRADA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod  Corto Armado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143681670738874907)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143681796637874908)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143681866585874909)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cod Unidad Medida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143681974563874910)
,p_db_column_name=>'CANTIDAD_UB'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Cantidad Ub'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143682000833874911)
,p_db_column_name=>'CONFIRMADO'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Confirmado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143682181016874912)
,p_db_column_name=>'COD_IVA'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143682208449874913)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143682331162874914)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143682472581874915)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143682565187874916)
,p_db_column_name=>'PRECIO_VENTA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Precio Venta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143682861918874919)
,p_db_column_name=>'TIP_CAMBIO_US'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Tip Cambio Us'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143682998374874920)
,p_db_column_name=>'IND_PRECIO'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Ind Precio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143683026437874921)
,p_db_column_name=>'PRECIO_LISTA'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Precio Lista'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143683335868874924)
,p_db_column_name=>'CONTROL'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143683412704874925)
,p_db_column_name=>'ROW_ID'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143683550587874926)
,p_db_column_name=>'DETALLE'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P478_DET_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-search">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143683693175874927)
,p_db_column_name=>'EDITAR'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P478_EDIT_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143683711053874928)
,p_db_column_name=>'BORRAR'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P478_DELETE_DATA_DET'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145226756223607143)
,p_db_column_name=>'TOTAL_COSTO_SAC_US'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Total Costo Sac Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145226868259607144)
,p_db_column_name=>'TOTAL_COSTO_OPN_GS'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Total Costo Opn Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145226968619607145)
,p_db_column_name=>'TOTAL_COSTO_OPN_US'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Total Costo Opn Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145227085855607146)
,p_db_column_name=>'TOTAL_ENTRADA_COSTO_OPN_GS'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Total Entrada Costo Opn Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145227137187607147)
,p_db_column_name=>'TOTAL_ENTRADA_COSTO_OPN_US'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Total Entrada Costo Opn Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145227211698607148)
,p_db_column_name=>'TOTAL_ENTRADA_COSTO_SAC_US'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Total Entrada Costo Sac Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145227370340607149)
,p_db_column_name=>'COSTO'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145227414393607150)
,p_db_column_name=>'COSTO_ARMADO_GS'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Costo Armado Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145491640345551301)
,p_db_column_name=>'COSTO_USD'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Costo Usd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145491747572551302)
,p_db_column_name=>'COSTO_OPN_USD'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Costo Opn Usd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145491830699551303)
,p_db_column_name=>'COSTO_AGREGADO_UNIDAD'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Costo Agregado Unidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145491937940551304)
,p_db_column_name=>'COSTO_ARMADO_COEFICIENTE'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Costo Armado Coeficiente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145492065928551305)
,p_db_column_name=>'COSTO_ARMADO_USD'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Costo Armado Usd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145492130851551306)
,p_db_column_name=>'PRECIO_ARMADO'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Precio Armado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145492298536551307)
,p_db_column_name=>'PRECIO_VERIFICACION'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Precio Verificacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145492358580551308)
,p_db_column_name=>'COSTO_ARMADO_OPN_USD'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Costo Armado Opn Usd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145492483682551309)
,p_db_column_name=>'COSTO_GS'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Costo Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145492550987551310)
,p_db_column_name=>'COSTO_US'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Costo Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145492629067551311)
,p_db_column_name=>'COSTO_ARMADO_OPN'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Costo Armado Opn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145492722445551312)
,p_db_column_name=>'TOTAL_COSTO_SAC_GS'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Total Costo Sac Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145492834335551313)
,p_db_column_name=>'TOTAL_ENTRADA_COSTO_SAC_GS'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Total Entrada Costo Sac Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(143701741086870065)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1437018'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ART_CORTO:COD_ARTICULO:COD_ART_CORTO_ENTRADA:COD_ARTICULO_ENTRADA:NRO_LOTE:CANTIDAD:TOTAL_COSTO_SAC_GS:TOTAL_COSTO_SAC_US:TOTAL_COSTO_OPN_GS:TOTAL_COSTO_OPN_US:COSTO_ARMADO_COEFICIENTE:COSTO_AGREGADO_UNIDAD:TOTAL_ENTRADA_COSTO_SAC_GS:TOTAL_ENTRAD'
||'A_COSTO_SAC_US:TOTAL_ENTRADA_COSTO_OPN_GS:TOTAL_ENTRADA_COSTO_OPN_US:DETALLE:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143220097900873843)
,p_plug_name=>'Contenedor 1.4'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143220106477873844)
,p_plug_name=>'Contenedor 1.9'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143220213926873845)
,p_plug_name=>'Contenedor 1.8'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143220349414873846)
,p_plug_name=>'Contenedor 1.7'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143599105916479508)
,p_plug_name=>unistr('Creaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(143220349414873846)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143599283319479509)
,p_plug_name=>'Autorizado'
,p_parent_plug_id=>wwv_flow_imp.id(143220349414873846)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143599877676479515)
,p_plug_name=>'Proceso'
,p_parent_plug_id=>wwv_flow_imp.id(143220349414873846)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143599919550479516)
,p_plug_name=>'Rechazado'
,p_parent_plug_id=>wwv_flow_imp.id(143220349414873846)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143220449504873847)
,p_plug_name=>'Totales'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>80
,p_plug_grid_column_span=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143220538133873848)
,p_plug_name=>'Contenedor 1.5'
,p_parent_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141942062898064512)
,p_plug_name=>'Contenedor Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143217611820873919)
,p_plug_name=>'Buscador de Armados de Equipo'
,p_region_css_classes=>'js-dialog-size1500x650'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ST.TIP_ENT_SAL,',
'       ST.SER_ENT_SAL,',
'       ST.NUM_ENT_SAL,',
'       ST.FEC_ENT_SAL,',
'       ST.ESTADO,',
'       ST.COD_SUCURSAL,',
'       (SELECT DESCRIPCION',
'          FROM SUCURSALES',
'         WHERE COD_EMPRESA = ST.COD_EMPRESA',
'           AND COD_SUCURSAL = ST.COD_SUCURSAL',
'           AND NVL(ESTADO,''N'') = ''S'') DESC_SUCURSAL,',
'       ST.COD_SUCURSAL_ENT,',
'       (SELECT DESCRIPCION',
'          FROM SUCURSALES',
'         WHERE COD_EMPRESA = ST.COD_EMPRESA',
'           AND COD_SUCURSAL = ST.COD_SUCURSAL_ENT',
'           AND NVL(ESTADO,''N'') = ''S'') DESC_SUCURSAL_ENT,',
'       ST.ROWID ROW_ID,',
'       NULL SELECCIONA',
'  FROM ST_CAMBIOS_CODIGOS_CAB ST',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
' ORDER BY FEC_ENT_SAL, NUM_ENT_SAL DESC',
'       '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Buscador de Armados de Equipo'
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
 p_id=>wwv_flow_imp.id(143217754755873920)
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
,p_internal_uid=>143217754755873920
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143217812342873921)
,p_db_column_name=>'TIP_ENT_SAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143217905467873922)
,p_db_column_name=>'SER_ENT_SAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143218020631873923)
,p_db_column_name=>'NUM_ENT_SAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143218147681873924)
,p_db_column_name=>'FEC_ENT_SAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
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
 p_id=>wwv_flow_imp.id(143218236742873925)
,p_db_column_name=>'ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143218374241873926)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143218401839873927)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sucursal Desarmado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143218561383873928)
,p_db_column_name=>'COD_SUCURSAL_ENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Sucursal Ent'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143218698366873929)
,p_db_column_name=>'DESC_SUCURSAL_ENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Sucursal Armado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143218722798873930)
,p_db_column_name=>'ROW_ID'
,p_display_order=>100
,p_column_identifier=>'J'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(143219095714873933)
,p_db_column_name=>'SELECCIONA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Selecciona'
,p_column_link=>'javascript:$s(''P478_ROW_ID_AUX'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(143567940068596098)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1435680'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SELECCIONA:TIP_ENT_SAL:SER_ENT_SAL:NUM_ENT_SAL:FEC_ENT_SAL:ESTADO:COD_SUCURSAL:DESC_SUCURSAL:COD_SUCURSAL_ENT:DESC_SUCURSAL_ENT:'
,p_sort_column_1=>'FEC_ENT_SAL'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143683999249874930)
,p_plug_name=>'Agreagar/Editar Detalle'
,p_region_css_classes=>'js-dialog-size1500x550'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(145222980961607105)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_button_name=>'BTGUARDAR_EDITAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar/Editar Detalle'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143684212654874933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_button_name=>'BTGUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143601249593479529)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_button_name=>'BTPROCESAR'
,p_button_static_id=>'BTPRO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-gear'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143683874942874929)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(143219907426873842)
,p_button_name=>'BTAGREGAR_DET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(143219209112873935)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(143217611820873919)
,p_button_name=>'BTNUEVO_EQUIPO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo de Equipo'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141942267311064514)
,p_name=>'P478_V_SER_ENT_SAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141942364863064515)
,p_name=>'P478_V_TIP_ENT_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141942511644064517)
,p_name=>'P478_V_TIPO_ENVIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141942660527064518)
,p_name=>'P478_V_MOTIVO_ORDEN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141942708389064519)
,p_name=>'P478_V_DEVOLUCION_ORDEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141942840719064520)
,p_name=>'P478_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141942916705064521)
,p_name=>'P478_V_TIPO_ORDEN_TRAB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141943010090064522)
,p_name=>'P478_V_COD_MONEDA_US'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141943114042064523)
,p_name=>'P478_V_COD_MONEDA_BASE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141943288350064524)
,p_name=>'P478_V_PORC_IVA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141943346524064525)
,p_name=>'P478_V_CAMBIA_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141943416113064526)
,p_name=>'P478_V_EXCEL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141944047535064532)
,p_name=>'P478_TIP_ENT_SAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141943618133064528)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_COMP_STARDETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, ',
'       tip_comprobante',
'  from tipos_comprobantes',
' where cod_empresa = :P_COD_EMPRESA',
'   and tip_comprobante <> :P478_V_TIPO_ENVIO',
'   and cod_modulo = ''ST'' ',
' order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141944163975064533)
,p_name=>'P478_SER_ENT_SAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141943618133064528)
,p_prompt=>'Serie'
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
 p_id=>wwv_flow_imp.id(141944204350064534)
,p_name=>'P478_NUM_ENT_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141943618133064528)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(141944327060064535)
,p_name=>'P478_FEC_ENT_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141943618133064528)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(141944473747064536)
,p_name=>'P478_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141943618133064528)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,AUTORIZADO;AUTORIZADO,RECHAZADO;RECHAZADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141944519443064537)
,p_name=>'P478_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141943784630064529)
,p_prompt=>'Sucursal Desarmado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_STARDETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal, ',
'       descripcion ',
'  from sucursales ',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl(estado,''N'') = ''S'' ',
'   order by descripcion '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P478_DESC_SUCURSAL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141944646072064538)
,p_name=>'P478_DESC_SUCURSAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141943784630064529)
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
 p_id=>wwv_flow_imp.id(141944717876064539)
,p_name=>'P478_COD_SUCURSAL_ENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141943784630064529)
,p_prompt=>'Sucursal Armado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_ENT_STARDETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal, ',
'       descripcion ',
'  from sucursales ',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl(estado,''N'') = ''S'' ',
'   order by descripcion '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P478_DESC_SUCURSAL_ENT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141944833859064540)
,p_name=>'P478_DESC_SUCURSAL_ENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141943784630064529)
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
 p_id=>wwv_flow_imp.id(141944984616064541)
,p_name=>'P478_COD_PROVEEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141943784630064529)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDOR_STARDETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, ',
'       p1.cod_proveedor ',
'  from cm_proveedores p1, ',
'       personas p2 ',
' where p1.cod_empresa = :P_COD_EMPRESA',
'   and p1.cod_persona = p2.cod_persona ',
' order by nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P478_DESC_PROVEEDOR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141945070819064542)
,p_name=>'P478_DESC_PROVEEDOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141943784630064529)
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
 p_id=>wwv_flow_imp.id(141945100254064543)
,p_name=>'P478_COD_MONEDA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141943784630064529)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS_STARDETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda, ',
'       descripcion ',
'  from monedas',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DESCRIPCION:P478_DESC_MONEDA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(141945264005064544)
,p_name=>'P478_DESC_MONEDA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141943784630064529)
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
 p_id=>wwv_flow_imp.id(141945378368064545)
,p_name=>'P478_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141943986572064531)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(141945453564064546)
,p_name=>'P478_TIPO_CAMBIO_COMPRA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(141943869586064530)
,p_prompt=>'Tipo Cambio Compra'
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
 p_id=>wwv_flow_imp.id(141945503182064547)
,p_name=>'P478_COEFICIENTE_ARMADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141943869586064530)
,p_prompt=>'Coeficiente Armado'
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
 p_id=>wwv_flow_imp.id(141945620928064548)
,p_name=>'P478_AJUSTE_SALIDA_GENERADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141943869586064530)
,p_prompt=>'Ajuste Salida'
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
 p_id=>wwv_flow_imp.id(141945740927064549)
,p_name=>'P478_AJUSTE_INGRESO_GENERADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141943869586064530)
,p_prompt=>'Entrada con Costo'
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
 p_id=>wwv_flow_imp.id(143219154455873934)
,p_name=>'P478_ROW_ID_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143217611820873919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143219547070873838)
,p_name=>'P478_CONTROL_INICIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143220635451873849)
,p_name=>'P478_DESC_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143220097900873843)
,p_prompt=>'Desarmado'
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
 p_id=>wwv_flow_imp.id(143220727850873850)
,p_name=>'P478_DESC_ARTICULO_ARMADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143220097900873843)
,p_prompt=>'Armado'
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
 p_id=>wwv_flow_imp.id(143598499410479501)
,p_name=>'P478_HORA_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143220097900873843)
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143598560015479502)
,p_name=>'P478_COSTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143220538133873848)
,p_prompt=>'Costo Uni.'
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
 p_id=>wwv_flow_imp.id(143598623786479503)
,p_name=>'P478_COSTO_USD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143220538133873848)
,p_prompt=>'Costo Uni. USD'
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
 p_id=>wwv_flow_imp.id(143598769674479504)
,p_name=>'P478_COSTO_OPN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143220538133873848)
,p_prompt=>'Costo Uni. Opn GS'
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
 p_id=>wwv_flow_imp.id(143598886844479505)
,p_name=>'P478_COSTO_OPN_USD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143220538133873848)
,p_prompt=>'Costo Uni. Opn USD'
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
 p_id=>wwv_flow_imp.id(143598933804479506)
,p_name=>'P478_TOT_IMPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143220449504873847)
,p_prompt=>'Total Importe'
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
 p_id=>wwv_flow_imp.id(143599044027479507)
,p_name=>'P478_TOT_CANTIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143220449504873847)
,p_prompt=>'Total Cantidad'
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
 p_id=>wwv_flow_imp.id(143599359455479510)
,p_name=>'P478_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143599105916479508)
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
 p_id=>wwv_flow_imp.id(143599426424479511)
,p_name=>'P478_FECHA_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143599105916479508)
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
 p_id=>wwv_flow_imp.id(143599510729479512)
,p_name=>'P478_USUARIO_AUT_COMERCIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143599283319479509)
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
 p_id=>wwv_flow_imp.id(143599636116479513)
,p_name=>'P478_FECHA_AUT_COMERCIAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143599283319479509)
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
 p_id=>wwv_flow_imp.id(143600026174479517)
,p_name=>'P478_USUARIO_RECHAZO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143599919550479516)
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
 p_id=>wwv_flow_imp.id(143600189289479518)
,p_name=>'P478_FECHA_RECHAZO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143599919550479516)
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
 p_id=>wwv_flow_imp.id(143600270372479519)
,p_name=>'P478_USUARIO_PROCESO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143599877676479515)
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
 p_id=>wwv_flow_imp.id(143600379906479520)
,p_name=>'P478_FEC_PROCESO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143599877676479515)
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
 p_id=>wwv_flow_imp.id(143600461930479521)
,p_name=>'P478_PRECIO_ARMADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143220213926873845)
,p_prompt=>'Precio Armado'
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
 p_id=>wwv_flow_imp.id(143600530694479522)
,p_name=>'P478_PRECIO_VERIFICACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143220213926873845)
,p_prompt=>unistr('Precio Verificaci\00F3n')
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
 p_id=>wwv_flow_imp.id(143600677674479523)
,p_name=>'P478_UNITARIO_OPN_GS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143220106477873844)
,p_prompt=>'Costo Uni OPN GS'
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
 p_id=>wwv_flow_imp.id(143600742803479524)
,p_name=>'P478_UNITARIO_OPS_USD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143220106477873844)
,p_prompt=>'Costo Uni OPN USD'
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
 p_id=>wwv_flow_imp.id(143600820550479525)
,p_name=>'P478_UNITARIO_SAC_GS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143220106477873844)
,p_prompt=>'Costo Uni SAC GS'
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
 p_id=>wwv_flow_imp.id(143600926696479526)
,p_name=>'P478_UNITARIO_SAC_USD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143220106477873844)
,p_prompt=>'Costo Uni SAC USD'
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
 p_id=>wwv_flow_imp.id(143601046673479527)
,p_name=>'P478_IND_PROCESO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143601152836479528)
,p_name=>'P478_COD_MOTIVO_ENT_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143871357187219801)
,p_name=>'P478_COD_ART_CORTO_ADD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Cod. Art. Corto Des.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_CORTO_STARDETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+rule*/ ',
'       a.descripcion,',
'       a.cod_articulo,',
'       0 cantidad,',
'       a.cod_art_corto',
'  from st_articulos        a,',
'       st_equivalencia_art e,',
'       st_articulos        a1      ',
' where a.cod_empresa = :P_COD_EMPRESA',
'   and (a.estado is null or a.estado <> ''I'')',
'   and (a1.estado is null or a1.estado <> ''I'')',
'   and a.cod_empresa = e.cod_empresa',
'   and a.cod_articulo = e.cod_articulo_equi',
'   and a.cod_rubro = ''PR''',
'   and a1.cod_rubro = ''PR''',
'   and a1.cod_empresa = e.cod_empresa',
'   and a1.cod_articulo = e.cod_articulo',
' group by a.cod_art_corto,',
'          a.descripcion,',
'          a.cod_articulo,',
'          A1.DESCRIPCION,',
'          A1.COD_ARTICULO,',
'          A1.COD_ART_CORTO,',
'          A.COD_ART_CORTO',
' order by a.descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'COD_ARTICULO:P478_COD_ARTICULO_ADD,DESCRIPCION:P478_DESC_ART_ADD'
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
 p_id=>wwv_flow_imp.id(143871459384219802)
,p_name=>'P478_COD_ARTICULO_ADD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>unistr('Cod. Art\00EDculo Des.')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_CORTO_STARDETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+rule*/ ',
'       a.descripcion,',
'       a.cod_articulo,',
'       0 cantidad,',
'       a.cod_art_corto',
'  from st_articulos        a,',
'       st_equivalencia_art e,',
'       st_articulos        a1      ',
' where a.cod_empresa = :P_COD_EMPRESA',
'   and (a.estado is null or a.estado <> ''I'')',
'   and (a1.estado is null or a1.estado <> ''I'')',
'   and a.cod_empresa = e.cod_empresa',
'   and a.cod_articulo = e.cod_articulo_equi',
'   and a.cod_rubro = ''PR''',
'   and a1.cod_rubro = ''PR''',
'   and a1.cod_empresa = e.cod_empresa',
'   and a1.cod_articulo = e.cod_articulo',
' group by a.cod_art_corto,',
'          a.descripcion,',
'          a.cod_articulo,',
'          A1.DESCRIPCION,',
'          A1.COD_ARTICULO,',
'          A1.COD_ART_CORTO,',
'          A.COD_ART_CORTO',
' order by a.descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143871540163219803)
,p_name=>'P478_DESC_ART_ADD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
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
 p_id=>wwv_flow_imp.id(143871696039219804)
,p_name=>'P478_COD_ART_CORTO_ENT_ADD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Cod. Art. Corto Arm.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARMADOS_STARDETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion desc_armado,',
'       a.cod_articulo cod_articulo_armado ,        ',
'       a.cod_art_corto cod_corto_armado, ',
'       A1.DESCRIPCION desc_desarmado,',
'       A1.COD_ARTICULO cod_articulo_desarmado,',
'       A1.COD_ART_CORTO cod_corto_desarmado',
'  from st_articulos a, ',
'       st_equivalencia_art e, ',
'       st_articulos a1',
' where a.cod_empresa = ''1''',
'   and (a.estado is null or a.estado <> ''I'')',
'   and (a1.estado is null or a1.estado <> ''I'')',
'   and a.cod_empresa = e.cod_empresa',
'   and a.cod_articulo = e.cod_articulo',
'   and a.cod_rubro = ''PR''',
'   and a1.cod_rubro = ''PR''',
'   and a1.cod_empresa = e.cod_empresa',
'   and a1.cod_articulo = e.cod_articulo_equi',
'   and a1.COD_ARTICULO = :P478_COD_ARTICULO_ADD',
' group by a.cod_art_corto, ',
'          a.descripcion, ',
'          a.cod_articulo,',
'          A1.DESCRIPCION, ',
'          A1.COD_ARTICULO,',
'          A1.COD_ART_CORTO',
' order by a.descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'COD_ARTICULO_ARMADO:P478_COD_ARTICULO_ENT_ADD,DESC_ARMADO:P478_DESC_ART_ADD_2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143871782700219805)
,p_name=>'P478_DESC_ART_ADD_2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
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
 p_id=>wwv_flow_imp.id(143871899999219806)
,p_name=>'P478_COD_ARTICULO_ENT_ADD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>unistr('Cod. Art\00EDculo Arm.')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARMADOS_STARDETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion desc_armado,',
'       a.cod_articulo cod_articulo_armado ,        ',
'       a.cod_art_corto cod_corto_armado, ',
'       A1.DESCRIPCION desc_desarmado,',
'       A1.COD_ARTICULO cod_articulo_desarmado,',
'       A1.COD_ART_CORTO cod_corto_desarmado',
'  from st_articulos a, ',
'       st_equivalencia_art e, ',
'       st_articulos a1',
' where a.cod_empresa = ''1''',
'   and (a.estado is null or a.estado <> ''I'')',
'   and (a1.estado is null or a1.estado <> ''I'')',
'   and a.cod_empresa = e.cod_empresa',
'   and a.cod_articulo = e.cod_articulo',
'   and a.cod_rubro = ''PR''',
'   and a1.cod_rubro = ''PR''',
'   and a1.cod_empresa = e.cod_empresa',
'   and a1.cod_articulo = e.cod_articulo_equi',
'   and a1.COD_ARTICULO = :P478_COD_ARTICULO_ADD',
' group by a.cod_art_corto, ',
'          a.descripcion, ',
'          a.cod_articulo,',
'          A1.DESCRIPCION, ',
'          A1.COD_ARTICULO,',
'          A1.COD_ART_CORTO',
' order by a.descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143871995776219807)
,p_name=>'P478_NRO_LOTE_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Lote'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LOTES_STARDETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(l.fec_vencimiento,''dd/mm/yyyy'') fec_vencimiento, ',
'       l.nro_lote, ',
'       l.cod_iva, ',
'       i.porc_iva_venta',
'  from st_lotes l, ',
'       st_iva i ',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_articulo = :P478_COD_ARTICULO_ADD',
'   and l.cod_iva = i.cod_iva ',
'order by l.fec_vencimiento'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P478_COD_ARTICULO_ADD'
,p_ajax_items_to_submit=>'P478_COD_ARTICULO_ADD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143872002015219808)
,p_name=>'P478_CANTIDAD_ADD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(143872187528219809)
,p_name=>'P478_TOT_COSTO_SAC_GS_ADD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Total Costo Sac Gs'
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
 p_id=>wwv_flow_imp.id(143872231289219810)
,p_name=>'P478_TOT_COSTO_SAC_US_ADD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Total Costo Sac Us'
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
 p_id=>wwv_flow_imp.id(143872390826219811)
,p_name=>'P478_TOT_COSTO_OPN_GS_ADD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Total Costo Opn Gs'
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
 p_id=>wwv_flow_imp.id(143872447293219812)
,p_name=>'P478_TOT_COSTO_OPN_US_ADD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Total Costo Opn US'
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
 p_id=>wwv_flow_imp.id(143872541674219813)
,p_name=>'P478_COSTO_ARMADO_COEF_ADD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Costo Agregar x Unid. Aplicado el Coef.'
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
 p_id=>wwv_flow_imp.id(143872665571219814)
,p_name=>'P478_COSTO_AGRE_UNI_ADD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Costo Agregar x unid. USD/TC'
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
 p_id=>wwv_flow_imp.id(143872707300219815)
,p_name=>'P478_TOT_ENT_COSTO_SAC_GS_ADD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Total Entrada Costo Sac Gs'
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
 p_id=>wwv_flow_imp.id(143872828569219816)
,p_name=>'P478_TOT_ENT_COSTO_SAC_US_ADD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Total Entrada Costo SAC US'
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
 p_id=>wwv_flow_imp.id(143872900918219817)
,p_name=>'P478_TOT_ENT_COSTO_OPN_GS_ADD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Total Entrada Costo Opn Gs'
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
 p_id=>wwv_flow_imp.id(143873061188219818)
,p_name=>'P478_TOT_ENT_COSTO_OPN_US_ADD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_prompt=>'Total Entrada Costo Opn US'
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
 p_id=>wwv_flow_imp.id(143873235137219820)
,p_name=>'P478_V_DIV'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143873379292219821)
,p_name=>'P478_V_MULT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143873462261219822)
,p_name=>'P478_V_COSTO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(141942062898064512)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143873599485219823)
,p_name=>'P478_CONFIRMADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143217611820873919)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143873751962219825)
,p_name=>'P478_TOT_CANTIDAD_ANT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143874045510219828)
,p_name=>'P478_ORIGEN_ADD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143874218113219830)
,p_name=>'P478_MENSAJE_COD_ART_CORTO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143874756687219835)
,p_name=>'P478_TIP_CAMBIO_US'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(143219907426873842)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143875279561219840)
,p_name=>'P478_CANTIDAD_UB_ADD'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143875395419219841)
,p_name=>'P478_CARGA_LOTE_ADD'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143875444446219842)
,p_name=>'P478_IND_ENT_SAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143875528259219843)
,p_name=>'P478_FEC_VENCIMIENTO_ADD'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143875872622219846)
,p_name=>'P478_MENSAJE_CONFIRM'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143875974899219847)
,p_name=>'P478_DESC_MOTIVO_ENT_SAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143876079620219848)
,p_name=>'P478_MENSAJE_COD_ART_CORTO_2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144753512554582602)
,p_name=>'P478_PRECIO_VENTA_ADD'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144753675701582603)
,p_name=>'P478_COD_GRUPO_ART_ADD'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145222510750607101)
,p_name=>'P478_MENSAJE_CANTIDAD'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145223102445607107)
,p_name=>'P478_TOT_COSTO_SAC_GS_AUX'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145223299797607108)
,p_name=>'P478_TOT_ENT_COSTO_OPN_US_AUX'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145223314577607109)
,p_name=>'P478_TOT_ENT_COSTO_OPN_GS_AUX'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145223459531607110)
,p_name=>'P478_TOT_ENT_COSTO_SAC_US_AUX'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145223517032607111)
,p_name=>'P478_TOT_ENT_COSTO_SAC_GS_AUX'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145223627250607112)
,p_name=>'P478_COSTO_AGRE_UNI_AUX'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145223772274607113)
,p_name=>'P478_COSTO_ARMADO_COEF_AUX'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145223891205607114)
,p_name=>'P478_TOT_COSTO_OPN_US_AUX'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145223945794607115)
,p_name=>'P478_TOT_COSTO_OPN_GS_AUX'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145224035286607116)
,p_name=>'P478_TOT_COSTO_SAC_US_AUX'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145224211041607118)
,p_name=>'P478_COSTO_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(143220538133873848)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145224346880607119)
,p_name=>'P478_COSTO_USD_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(143220538133873848)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145224470339607120)
,p_name=>'P478_COSTO_OPN_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(143220538133873848)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145224597499607121)
,p_name=>'P478_COSTO_OPN_USD_AUX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(143220538133873848)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145224639949607122)
,p_name=>'P478_PRECIO_ARMADO_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143220213926873845)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145224777332607123)
,p_name=>'P478_PRECIO_VERIFICACION_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143220213926873845)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145224805229607124)
,p_name=>'P478_UNITARIO_OPN_GS_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(143220106477873844)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145224909239607125)
,p_name=>'P478_UNITARIO_OPS_USD_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(143220106477873844)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145225067940607126)
,p_name=>'P478_UNITARIO_SAC_GS_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(143220106477873844)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145225141364607127)
,p_name=>'P478_UNITARIO_SAC_USD_AUX'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(143220106477873844)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145225223503607128)
,p_name=>'P478_TOT_IMPORTE_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143220449504873847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145225324683607129)
,p_name=>'P478_TOT_CANTIDAD_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143220449504873847)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145225706238607133)
,p_name=>'P478_COSTO_ARMADO_GS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145225851417607134)
,p_name=>'P478_COSTO_ARMADO_USD'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145225906264607135)
,p_name=>'P478_COSTO_ARMADO_OPN_USD'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145226089955607136)
,p_name=>'P478_COSTO_ARMADO_OPN'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145226261821607138)
,p_name=>'P478_PRECIO_LISTA_AUX'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145226323060607139)
,p_name=>'P478_EDIT_DATA_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(143219907426873842)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145226478282607140)
,p_name=>'P478_DELETE_DATA_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(143219907426873842)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145493250690551317)
,p_name=>'P478_MENSAJE_COD_CORT_ENT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145493649341551321)
,p_name=>'P478_DET_DATA_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(143219907426873842)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145494574648551330)
,p_name=>'P478_MENSAJE_COD_ARTICULO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145494679763551331)
,p_name=>'P478_MENSAJE_CONFIRM_2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145495627849551341)
,p_name=>'P478_COSTO_GS'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145495793659551342)
,p_name=>'P478_COSTO_US'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(143683999249874930)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145496207692551347)
,p_name=>'P478_MENSAJE_NUM_ENT_SAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147164907531697001)
,p_name=>'P478_MENSAJE_PRE_IN_DET'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147165734860697009)
,p_name=>'P478_CONTROL_GUARDADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147166562728697017)
,p_name=>'P478_MENSAJE_PROCESAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(141941959899064511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147167488845697026)
,p_name=>'P478_ESTADO_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(141943618133064528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143218879605873931)
,p_name=>'DA_OPEN_REGION_BUSCAR'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143218907965873932)
,p_event_id=>wwv_flow_imp.id(143218879605873931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143217611820873919)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143219378807873836)
,p_name=>'DA_BTNUEVO_EQUIPO'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143219209112873935)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143219435912873837)
,p_event_id=>wwv_flow_imp.id(143219378807873836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P478_TIP_ENT_SAL,P478_SER_ENT_SAL,P478_NUM_ENT_SAL,P478_FEC_ENT_SAL,P478_ESTADO,P478_COD_SUCURSAL,P478_TIPO_CAMBIO_COMPRA,P478_OBSERVACION,P478_COEFICIENTE_ARMADO,P478_COD_SUCURSAL_ENT,P478_AJUSTE_SALIDA_GENERADO,P478_AJUSTE_INGRESO_GENERADO,P478_COD'
||'_PROVEEDOR,P478_COD_MONEDA,P478_DESC_SUCURSAL,P478_DESC_SUCURSAL_ENT,P478_DESC_PROVEEDOR,P478_DESC_MONEDA,P478_MENSAJE_CANTIDAD,P478_MENSAJE_COD_ARTICULO,P478_MENSAJE_CONFIRM_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143219694659873839)
,p_event_id=>wwv_flow_imp.id(143219378807873836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P478_CONTROL_INICIO := 0;'
,p_attribute_03=>'P478_CONTROL_INICIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143219726500873840)
,p_event_id=>wwv_flow_imp.id(143219378807873836)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P478_SER_ENT_SAL := :P478_V_SER_ENT_SAL;',
'    :P478_FECHA_ALTA := sysdate;',
'    :P478_FEC_ENT_SAL := trae_fecha(:P_COD_EMPRESA, :P478_COD_MODULO);',
'    :P478_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
'    :P478_COD_MONEDA := ''1'';',
'    :P478_TIP_ENT_SAL := ''AJS'';',
'    :P478_SER_ENT_SAL := ''A'';',
'    :P478_TOT_CANTIDAD := 0 ;',
'    :P478_TOT_IMPORTE := 0 ;',
'    :P478_COD_USUARIO := :P_COD_USUARIO;',
'    :P478_IND_PROCESO := ''N'';',
'    :P478_COD_MOTIVO_ENT_SAL :=  ''1'';',
'     ',
'     :P478_ESTADO := ''CREADO'';',
'    /*   ',
'    begin',
'       select descripcion',
'          into :b_cabecera.desc_tipo',
'          from tipos_comprobantes',
'          where cod_empresa     = :variables.cod_empresa',
'            and tip_comprobante = :b_cabecera.tip_ent_sal',
'            and tip_comprobante <> :variables.tipo_envio',
'            and cod_modulo      = ''ST'' ;',
'    exception',
'       when others then',
'          :b_cabecera.desc_tipo := null ;',
'    end ;',
'*/',
'    BEGIN',
'      select t.val_compra ',
'        into :P478_TIPO_CAMBIO_COMPRA',
'        from tipos_cambio t',
'        where cod_moneda = ''2''',
'          and t.tipo_cambio = ''D''',
'          and t.fec_tipo_cambio in (select max(t1.fec_tipo_cambio) ',
'                                      from tipos_cambio t1 ',
'                                     where t.cod_moneda = t1.cod_moneda',
'                                       and t.tipo_cambio = t1.tipo_cambio',
'                                       and t1.fec_tipo_cambio <= :P478_FEC_ENT_SAL);',
'    EXCEPTION',
'         when others then',
'        :P478_TIPO_CAMBIO_COMPRA := 1;',
'    END;',
'',
'    begin',
'        :P478_COEFICIENTE_ARMADO := (BS_BUSCA_PARAMETRO(''ST'', ''COEFICIENTE_ARMADO''));     ',
'    exception ',
'        when others then',
'    	:P478_COEFICIENTE_ARMADO := replace((BS_BUSCA_PARAMETRO(''ST'', ''COEFICIENTE_ARMADO'')),'','',''.'');',
'    end;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTNUEVO_EQUIPO WHEN_CREATE_RECORD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_V_SER_ENT_SAL,P_COD_EMPRESA,P478_COD_MODULO,P478_COD_USUARIO,P478_FEC_ENT_SAL'
,p_attribute_03=>'P478_SER_ENT_SAL,P478_FECHA_ALTA,P478_FEC_ENT_SAL,P478_HORA_ALTA,P478_COD_MONEDA,P478_TIP_ENT_SAL,P478_SER_ENT_SAL,P478_TOT_CANTIDAD,P478_TOT_IMPORTE,P478_IND_PROCESO,P478_COD_MOTIVO_ENT_SAL,P478_ESTADO,P478_TIPO_CAMBIO_COMPRA,P478_COEFICIENTE_ARMADO'
||',P478_COD_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143873663420219824)
,p_event_id=>wwv_flow_imp.id(143219378807873836)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P478_CONFIRMADO := ''S'';',
'    :P478_TOT_CANTIDAD_ANT := NVL(:P478_CANTIDAD_ADD,0);',
'    begin',
'       select descripcion, ',
'              ind_ent_sal',
'         into :P478_DESC_MOTIVO_ENT_SAL,',
'              :P478_IND_ENT_SAL',
'         from st_motivo_ent_sal',
'        where cod_motivo_ent_sal = :P478_COD_MOTIVO_ENT_SAL;',
'    exception',
'       when others then',
'         :P478_DESC_MOTIVO_ENT_SAL := null ;',
'    end ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTNUEVO_EQUIPO WHEN_NEW_RECORD_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_CANTIDAD_ADD,P478_COD_MOTIVO_ENT_SAL'
,p_attribute_03=>'P478_CONFIRMADO,P478_TOT_CANTIDAD_ANT,P478_DESC_MOTIVO_ENT_SAL,P478_IND_ENT_SAL'
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
 p_id=>wwv_flow_imp.id(143873188664219819)
,p_event_id=>wwv_flow_imp.id(143219378807873836)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doDisable_Enable();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143219872271873841)
,p_event_id=>wwv_flow_imp.id(143219378807873836)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143217611820873919)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143684032655874931)
,p_name=>'DA_BTAGREGAR_DET'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143683874942874929)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143874673755219834)
,p_event_id=>wwv_flow_imp.id(143684032655874931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P478_MENSAJE_COD_ART_CORTO,P478_COD_ART_CORTO_ADD,P478_COD_ARTICULO_ADD,P478_DESC_ART_ADD,P478_COD_ART_CORTO_ENT_ADD,P478_COD_ARTICULO_ENT_ADD,P478_DESC_ART_ADD_2,P478_NRO_LOTE_ADD,P478_CANTIDAD_ADD,P478_TOT_COSTO_SAC_GS_ADD,P478_TOT_COSTO_SAC_US_ADD'
||',P478_TOT_COSTO_OPN_US_ADD,P478_COSTO_ARMADO_COEF_ADD,P478_COSTO_AGRE_UNI_ADD,P478_TOT_ENT_COSTO_SAC_GS_ADD,P478_TOT_ENT_COSTO_SAC_US_ADD,P478_TOT_ENT_COSTO_OPN_GS_ADD,P478_TOT_ENT_COSTO_OPN_US_ADD,P478_ORIGEN_ADD,P478_MENSAJE_COD_ART_CORTO_2,P478_ME'
||'NSAJE_CONFIRM,P478_PRECIO_VENTA_ADD,P478_MENSAJE_CANTIDAD,P478_MENSAJE_COD_ARTICULO,P478_MENSAJE_CONFIRM_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143684176052874932)
,p_event_id=>wwv_flow_imp.id(143684032655874931)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143683999249874930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143873828103219826)
,p_name=>'DA_COD_ART_CORTO_ADD'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_COD_ART_CORTO_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143873902684219827)
,p_event_id=>wwv_flow_imp.id(143873828103219826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_COD_ART_CORTO_ADD,P478_COD_ARTICULO_ADD,P478_NRO_LOTE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143874109447219829)
,p_event_id=>wwv_flow_imp.id(143873828103219826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.VALIDATE_COD_CORTO(pcod_empresa     => :P_COD_EMPRESA,',
'                                pcod_art_corto   => :P478_COD_ART_CORTO_ADD,',
'                                pcod_articulo    => :P478_COD_ARTICULO_ADD,',
'                                pcod_moneda      => :P478_COD_MONEDA,',
'                                pcod_moneda_base => :P478_V_COD_MONEDA_BASE,',
'                                ptip_cambio_us   => :P478_TIP_CAMBIO_US,',
'                                pcantidad        => :P478_CANTIDAD_ADD,',
'                                pnro_lote        => :P478_NRO_LOTE_ADD,',
'                                pind_ent_sal     => :P478_IND_ENT_SAL,',
'                                porigen          => :P478_ORIGEN_ADD,',
'                                pcosto           => :P478_COSTO_AUX,',
'                                pmensaje         => :P478_MENSAJE_COD_ART_CORTO,',
'                                pmult            => :P478_V_MULT,',
'                                pdiv             => :P478_V_DIV,',
'                                pcantidad_ub     => :P478_CANTIDAD_UB_ADD,',
'                                pcarga_lote      => :P478_CARGA_LOTE_ADD,',
'                                pfec_vencimiento => :P478_FEC_VENCIMIENTO_ADD,',
'                                pmensaje_confirm => :P478_MENSAJE_CONFIRM);',
'',
'    :P478_COSTO := TO_CHAR(:P478_COSTO_AUX,''999G999G990D00'');                            ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P478_COD_MONEDA,P478_V_COD_MONEDA_BASE,P478_TIP_CAMBIO_US,P478_COD_ART_CORTO_ADD,P478_COD_ARTICULO_ADD,P478_CANTIDAD_ADD,P478_NRO_LOTE_ADD,P478_IND_ENT_SAL,P478_COSTO_AUX'
,p_attribute_03=>'P478_ORIGEN_ADD,P478_COSTO,P478_MENSAJE_COD_ART_CORTO,P478_V_MULT,P478_V_DIV,P478_CANTIDAD_UB_ADD,P478_CARGA_LOTE_ADD,P478_FEC_VENCIMIENTO_ADD,P478_MENSAJE_CONFIRM,P478_COSTO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_COD_ART_CORTO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143875682269219844)
,p_event_id=>wwv_flow_imp.id(143873828103219826)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P478_MENSAJE_CONFIRM.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_CONFIRM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143875762252219845)
,p_event_id=>wwv_flow_imp.id(143873828103219826)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN                        ',
'    :P478_CARGA_LOTE_ADD := ''S'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO 2 ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P478_CARGA_LOTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_COD_ART_CORTO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143875182636219839)
,p_event_id=>wwv_flow_imp.id(143873828103219826)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.VALIDATE_COD_CORTO_2(pcod_empresa     => :P_COD_EMPRESA,',
'                                  pcod_articulo    => :P478_COD_ARTICULO_ADD,',
'                                  pcod_moneda_base => :P478_V_COD_MONEDA_BASE,',
'                                  pporc_iva        => :P478_V_PORC_IVA,',
'                                  pfec_ent_sal     => :P478_FEC_ENT_SAL,',
'                                  pcod_grupo_art   => :P478_COD_GRUPO_ART_ADD,',
'                                  pcod_sucursal    => :P478_COD_SUCURSAL,',
'                                  pprecio_venta    => :P478_PRECIO_VENTA_ADD,',
'                                  pmensaje         => :P478_MENSAJE_COD_ART_CORTO_2,',
'                                  pnro_lote        => :P478_NRO_LOTE_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P478_COD_ARTICULO_ADD,P478_V_COD_MONEDA_BASE,P478_V_PORC_IVA,P478_FEC_ENT_SAL,P478_COD_GRUPO_ART_ADD,P478_COD_SUCURSAL'
,p_attribute_03=>'P478_PRECIO_VENTA_ADD,P478_MENSAJE_COD_ART_CORTO_2,P478_NRO_LOTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_COD_ART_CORTO_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143684968944874940)
,p_name=>'DA_COD_ART_CORTO_ADD_2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_NRO_LOTE_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143685005252874941)
,p_event_id=>wwv_flow_imp.id(143684968944874940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_COD_ART_CORTO_ADD,P478_COD_ARTICULO_ADD,P478_NRO_LOTE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143685171920874942)
,p_event_id=>wwv_flow_imp.id(143684968944874940)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.VALIDATE_COD_CORTO(pcod_empresa     => :P_COD_EMPRESA,',
'                                pcod_art_corto   => :P478_COD_ART_CORTO_ADD,',
'                                pcod_articulo    => :P478_COD_ARTICULO_ADD,',
'                                pcod_moneda      => :P478_COD_MONEDA,',
'                                pcod_moneda_base => :P478_V_COD_MONEDA_BASE,',
'                                ptip_cambio_us   => :P478_TIP_CAMBIO_US,',
'                                pcantidad        => :P478_CANTIDAD_ADD,',
'                                pnro_lote        => :P478_NRO_LOTE_ADD,',
'                                pind_ent_sal     => :P478_IND_ENT_SAL,',
'                                porigen          => :P478_ORIGEN_ADD,',
'                                pcosto           => :P478_COSTO,',
'                                pmensaje         => :P478_MENSAJE_COD_ART_CORTO,',
'                                pmult            => :P478_V_MULT,',
'                                pdiv             => :P478_V_DIV,',
'                                pcantidad_ub     => :P478_CANTIDAD_UB_ADD,',
'                                pcarga_lote      => :P478_CARGA_LOTE_ADD,',
'                                pfec_vencimiento => :P478_FEC_VENCIMIENTO_ADD,',
'                                pmensaje_confirm => :P478_MENSAJE_CONFIRM);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P478_COD_MONEDA,P478_V_COD_MONEDA_BASE,P478_TIP_CAMBIO_US,P478_COD_ART_CORTO_ADD,P478_COD_ARTICULO_ADD,P478_CANTIDAD_ADD,P478_NRO_LOTE_ADD,P478_IND_ENT_SAL'
,p_attribute_03=>'P478_ORIGEN_ADD,P478_COSTO,P478_MENSAJE_COD_ART_CORTO,P478_V_MULT,P478_V_DIV,P478_CANTIDAD_UB_ADD,P478_CARGA_LOTE_ADD,P478_FEC_VENCIMIENTO_ADD,P478_MENSAJE_CONFIRM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_NRO_LOTE_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143685247148874943)
,p_event_id=>wwv_flow_imp.id(143684968944874940)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P478_MENSAJE_CONFIRM.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_CONFIRM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143685345470874944)
,p_event_id=>wwv_flow_imp.id(143684968944874940)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN                        ',
'    :P478_CARGA_LOTE_ADD := ''S'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO 2 ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P478_CARGA_LOTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_NRO_LOTE_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143685497288874945)
,p_event_id=>wwv_flow_imp.id(143684968944874940)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.VALIDATE_COD_CORTO_2(pcod_empresa     => :P_COD_EMPRESA,',
'                                  pcod_articulo    => :P478_COD_ARTICULO_ADD,',
'                                  pcod_moneda_base => :P478_V_COD_MONEDA_BASE,',
'                                  pporc_iva        => :P478_V_PORC_IVA,',
'                                  pfec_ent_sal     => :P478_FEC_ENT_SAL,',
'                                  pcod_grupo_art   => :P478_COD_GRUPO_ART_ADD,',
'                                  pcod_sucursal    => :P478_COD_SUCURSAL,',
'                                  pprecio_venta    => :P478_PRECIO_VENTA_ADD,',
'                                  pmensaje         => :P478_MENSAJE_COD_ART_CORTO_2,',
'                                  pnro_lote        => :P478_NRO_LOTE_ADD);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P478_COD_ARTICULO_ADD,P478_V_COD_MONEDA_BASE,P478_V_PORC_IVA,P478_FEC_ENT_SAL,P478_COD_GRUPO_ART_ADD,P478_COD_SUCURSAL'
,p_attribute_03=>'P478_PRECIO_VENTA_ADD,P478_MENSAJE_COD_ART_CORTO_2,P478_NRO_LOTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_NRO_LOTE_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143684374334874934)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_COD_ARTICULO_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143684459330874935)
,p_event_id=>wwv_flow_imp.id(143684374334874934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_COD_ART_CORTO_ADD,P478_COD_ARTICULO_ADD,P478_NRO_LOTE_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143684583755874936)
,p_event_id=>wwv_flow_imp.id(143684374334874934)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.VALIDATE_COD_ARTICULO(pcod_empresa        => :P_COD_EMPRESA,',
'                                   pcod_articulo       => :P478_COD_ARTICULO_ADD,',
'                                   pcod_moneda         => :P478_COD_MONEDA,',
'                                   pcod_moneda_base    => :P478_V_COD_MONEDA_BASE,',
'                                   ptip_cambio_us      => :P478_TIP_CAMBIO_US,',
'                                   pcantidad           => :P478_CANTIDAD_ADD,',
'                                   pnro_lote           => :P478_NRO_LOTE_ADD,',
'                                   pind_ent_sal        => :P478_IND_ENT_SAL,',
'                                   pcod_motivo_ent_sal => :P478_COD_MOTIVO_ENT_SAL,',
'                                   porigen             => :P478_ORIGEN_ADD,',
'                                   pcosto              => :P478_COSTO_AUX,',
'                                   pcosto_usd          => :P478_COSTO_USD_AUX,',
'                                   pmensaje            => :P478_MENSAJE_COD_ARTICULO,',
'                                   pmult               => :P478_V_MULT,',
'                                   pdiv                => :P478_V_DIV,',
'                                   pcantidad_ub        => :P478_CANTIDAD_UB_ADD,',
'                                   pcarga_lote         => :P478_CARGA_LOTE_ADD,',
'                                   pfec_vencimiento    => :P478_FEC_VENCIMIENTO_ADD,',
'                                   pmensaje_confirm    => :P478_MENSAJE_CONFIRM_2);',
'    ',
'    :P478_COSTO := TO_CHAR(:P478_COSTO_AUX,''999G999G990D00'');',
'    :P478_COSTO_USD := TO_CHAR(:P478_COSTO_USD_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P478_COD_MONEDA,P478_V_COD_MONEDA_BASE,P478_TIP_CAMBIO_US,P478_COD_ART_CORTO_ADD,P478_COD_ARTICULO_ADD,P478_CANTIDAD_ADD,P478_NRO_LOTE_ADD,P478_IND_ENT_SAL,P478_COSTO_AUX,P478_COD_MOTIVO_ENT_SAL,P478_COSTO_USD_AUX'
,p_attribute_03=>'P478_ORIGEN_ADD,P478_COSTO,P478_MENSAJE_COD_ART_CORTO,P478_V_MULT,P478_V_DIV,P478_CANTIDAD_UB_ADD,P478_CARGA_LOTE_ADD,P478_FEC_VENCIMIENTO_ADD,P478_MENSAJE_CONFIRM,P478_COSTO_AUX,P478_MENSAJE_COD_ARTICULO,P478_MENSAJE_CONFIRM_2,P478_COSTO_USD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_COD_ARTICULO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143684606919874937)
,p_event_id=>wwv_flow_imp.id(143684374334874934)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P478_MENSAJE_CONFIRM.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_CONFIRM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143684775551874938)
,p_event_id=>wwv_flow_imp.id(143684374334874934)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN                        ',
'    :P478_CARGA_LOTE_ADD := ''S'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO 2 ''||SQLERRM);',
'END;'))
,p_attribute_03=>'P478_CARGA_LOTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_COD_ARTICULO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143684839310874939)
,p_event_id=>wwv_flow_imp.id(143684374334874934)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.VALIDATE_COD_ARTICULO_2(pcod_empresa     => :P_COD_EMPRESA,',
'                                     pcod_articulo    => :P478_COD_ARTICULO_ADD,',
'                                     pcod_moneda_base => :P478_V_COD_MONEDA_BASE,',
'                                     pporc_iva        => :P478_V_PORC_IVA,',
'                                     pfec_ent_sal     => :P478_FEC_ENT_SAL,',
'                                     pcod_grupo_art   => :P478_COD_GRUPO_ART_ADD,',
'                                     pcod_sucursal    => :P478_COD_SUCURSAL,',
'                                     pind_ent_sal     => :P478_IND_ENT_SAL,',
'                                     pcantidad        => :P478_CANTIDAD_ADD,',
'                                     pprecio_venta    => :P478_PRECIO_VENTA_ADD,',
'                                     pmensaje         => :P478_MENSAJE_COD_ARTICULO,',
'                                     pmensaje_confirm => :P478_MENSAJE_CONFIRM_2,',
'                                     pnro_lote        => :P478_NRO_LOTE_ADD,',
'                                     pmult            => :P478_V_MULT,',
'                                     pdiv             => :P478_V_DIV,',
'                                     pcantidad_ub     => :P478_CANTIDAD_UB_ADD,',
'                                     pfec_vencimiento => :P478_FEC_VENCIMIENTO_ADD,',
'                                     pcarga_lote      => :P478_CARGA_LOTE_ADD);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P478_COD_ARTICULO_ADD,P478_V_COD_MONEDA_BASE,P478_V_PORC_IVA,P478_FEC_ENT_SAL,P478_COD_GRUPO_ART_ADD,P478_COD_SUCURSAL,P478_IND_ENT_SAL,P478_CANTIDAD_ADD'
,p_attribute_03=>'P478_PRECIO_VENTA_ADD,P478_MENSAJE_COD_ARTICULO,P478_MENSAJE_CONFIRM_2,P478_NRO_LOTE_ADD,P478_V_MULT,P478_V_DIV,P478_CANTIDAD_UB_ADD,P478_FEC_VENCIMIENTO_ADD,P478_CARGA_LOTE_ADD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_COD_ARTICULO_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145495381804551338)
,p_event_id=>wwv_flow_imp.id(143684374334874934)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.VALIDATE_COD_ARTICULO_3(pcod_empresa     => :P_COD_EMPRESA,',
'                                     pcod_articulo    => :P478_COD_ARTICULO_ADD,',
'                                     pcod_moneda_base => :P478_V_COD_MONEDA_BASE,',
'                                     pporc_iva        => :P478_V_PORC_IVA,',
'                                     pfec_ent_sal     => :P478_FEC_ENT_SAL,',
'                                     pcod_sucursal    => :P478_COD_SUCURSAL,',
'                                     pind_ent_sal     => :P478_IND_ENT_SAL,',
'                                     pprecio_venta    => :P478_PRECIO_VENTA_ADD,',
'                                     pmensaje         => :P478_MENSAJE_COD_ARTICULO,',
'                                     pnro_lote        => :P478_NRO_LOTE_ADD,',
'                                     pprecio_lista    => :P478_PRECIO_LISTA_AUX);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ARTICULO 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P478_COD_ARTICULO_ADD,P478_V_COD_MONEDA_BASE,P478_V_PORC_IVA,P478_FEC_ENT_SAL,P478_COD_SUCURSAL,P478_IND_ENT_SAL'
,p_attribute_03=>'P478_PRECIO_VENTA_ADD,P478_MENSAJE_COD_ARTICULO,P478_NRO_LOTE_ADD,P478_PRECIO_LISTA_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143874362847219831)
,p_name=>'DA_MENSAJE_COD_ART_CORTO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_MENSAJE_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143874485223219832)
,p_event_id=>wwv_flow_imp.id(143874362847219831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_MENSAJE_COD_ART_CORTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143874574521219833)
,p_event_id=>wwv_flow_imp.id(143874362847219831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P478_MENSAJE_COD_ART_CORTO.'
,p_attribute_02=>'Avisto'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_COD_ART_CORTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143874815728219836)
,p_name=>'DA_FEC_ENT_SAL'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_FEC_ENT_SAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143874913252219837)
,p_event_id=>wwv_flow_imp.id(143874815728219836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_FEC_ENT_SAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143875017360219838)
,p_event_id=>wwv_flow_imp.id(143874815728219836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        select tipo_cambio_contado',
'          into :P478_TIP_CAMBIO_US',
'          from tipos_cambio ',
'         where cod_moneda = :P478_V_COD_MONEDA_US',
'           and fec_tipo_cambio <= :P478_FEC_ENT_SAL',
'           and fec_tipo_cambio = (select max(fec_tipo_cambio )',
'                                    from tipos_cambio ',
'                                   where cod_moneda = :P478_V_COD_MONEDA_US',
'                                     and fec_tipo_cambio <= :P478_FEC_ENT_SAL);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        :P478_TIP_CAMBIO_US := 1;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_FEC_ENT_SAL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_V_COD_MONEDA_US,P478_FEC_ENT_SAL'
,p_attribute_03=>'P478_TIP_CAMBIO_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143876109714219849)
,p_name=>'DA_P478_MENSAJE_COD_ART_CORTO_2'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_MENSAJE_COD_ART_CORTO_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143876203918219850)
,p_event_id=>wwv_flow_imp.id(143876109714219849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_MENSAJE_COD_ART_CORTO_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144753460363582601)
,p_event_id=>wwv_flow_imp.id(143876109714219849)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P478_MENSAJE_COD_ART_CORTO_2.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_COD_ART_CORTO_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143685509062874946)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_CANTIDAD_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143685634109874947)
,p_event_id=>wwv_flow_imp.id(143685509062874946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'validateNumber(event);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143685799847874948)
,p_name=>'DA_CANTIDAD_ADD'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_CANTIDAD_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143685826410874949)
,p_event_id=>wwv_flow_imp.id(143685799847874948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_CANTIDAD_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143685973978874950)
,p_event_id=>wwv_flow_imp.id(143685799847874948)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.VALIDATE_CANTIDAD(pcod_articulo_ent           => :P478_COD_ARTICULO_ENT_ADD,',
'                               pcod_empresa                => :P_COD_EMPRESA,',
'                               pcod_sucursal               => :P478_COD_SUCURSAL,',
'                               pcantidad                   => :P478_CANTIDAD_ADD,',
'                               pcod_articulo               => :P478_COD_ARTICULO_ADD,',
'                               pnro_lote                   => :P478_NRO_LOTE_ADD,',
'                               ptipo_cambio_compra         => :P478_TIPO_CAMBIO_COMPRA,',
'                               pcosto                      => :P478_COSTO_AUX,',
'                               pcosto_usd                  => :P478_COSTO_USD_AUX,',
'                               pcosto_opn                  => :P478_COSTO_OPN_AUX,',
'                               pcosto_opn_usd              => :P478_COSTO_OPN_USD_AUX,',
'                               pprecio_armado              => :P478_PRECIO_ARMADO_AUX,',
'                               pprecio_verificacion        => :P478_PRECIO_VERIFICACION_AUX,',
'                               pcosto_arm_coef             => :P478_COSTO_ARMADO_COEF_AUX,',
'                               pcosto_agre_uni             => :P478_COSTO_AGRE_UNI_AUX,',
'                               pmensaje                    => :P478_MENSAJE_CANTIDAD,',
'                               punitario_opn_gs            => :P478_UNITARIO_OPN_GS_AUX,',
'                               punitario_ops_usd           => :P478_UNITARIO_OPS_USD_AUX,',
'                               punitario_sac_gs            => :P478_UNITARIO_SAC_GS_AUX,',
'                               punitario_sac_usd           => :P478_UNITARIO_SAC_USD_AUX,',
'                               ptotal_costo_sac_gs         => :P478_TOT_COSTO_SAC_GS_AUX,',
'                               ptotal_costo_sac_us         => :P478_TOT_COSTO_SAC_US_AUX,',
'                               ptotal_costo_opn_gs         => :P478_TOT_COSTO_OPN_GS_AUX,',
'                               ptotal_costo_opn_us         => :P478_TOT_COSTO_OPN_US_AUX,',
'                               ptotal_entrada_costo_sac_gs => :P478_TOT_ENT_COSTO_SAC_GS_AUX,',
'                               ptotal_entrada_costo_sac_us => :P478_TOT_ENT_COSTO_SAC_US_AUX,',
'                               ptotal_entrada_costo_opn_gs => :P478_TOT_ENT_COSTO_OPN_GS_AUX,',
'                               ptotal_entrada_costo_opn_us => :P478_TOT_ENT_COSTO_OPN_US_AUX);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CANTIDAD_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_COD_ARTICULO_ENT_ADD,P_COD_EMPRESA,P478_COD_SUCURSAL,P478_CANTIDAD_ADD,P478_COD_ARTICULO_ADD,P478_NRO_LOTE_ADD,P478_TIPO_CAMBIO_COMPRA,P478_COSTO,P478_COSTO_USD,P478_COSTO_OPN,P478_COSTO_OPN_USD'
,p_attribute_03=>'P478_PRECIO_ARMADO_AUX,P478_PRECIO_VERIFICACION_AUX,P478_COSTO_ARMADO_COEF_AUX,P478_COSTO_AGRE_UNI_AUX,P478_MENSAJE_CANTIDAD,P478_UNITARIO_OPN_GS_AUX,P478_UNITARIO_OPS_USD_AUX,P478_UNITARIO_SAC_GS_AUX,P478_UNITARIO_SAC_USD_AUX,P478_TOT_COSTO_SAC_GS_A'
||'UX,P478_TOT_COSTO_SAC_US_AUX,P478_TOT_COSTO_OPN_GS_AUX,P478_TOT_COSTO_OPN_US_AUX,P478_TOT_ENT_COSTO_SAC_GS_AUX,P478_TOT_ENT_COSTO_SAC_US_AUX,P478_TOT_ENT_COSTO_OPN_GS_AUX,P478_TOT_ENT_COSTO_OPN_US_AUX,P478_COSTO_USD_AUX,P478_COSTO_OPN_AUX,P478_COSTO_'
||'OPN_USD_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_CANTIDAD_ADD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145224101977607117)
,p_event_id=>wwv_flow_imp.id(143685799847874948)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P478_COSTO_ARMADO_COEF_ADD := TO_CHAR(:P478_COSTO_ARMADO_COEF_AUX,''999G999G990D00'');',
'    :P478_COSTO_AGRE_UNI_ADD := TO_CHAR(:P478_COSTO_AGRE_UNI_AUX,''999G999G990D00'');',
'    :P478_TOT_COSTO_SAC_GS_ADD := TO_CHAR(:P478_TOT_COSTO_SAC_GS_AUX,''999G999G990D00'');',
'    :P478_TOT_COSTO_SAC_US_ADD := TO_CHAR(:P478_TOT_COSTO_SAC_US_AUX,''999G999G990D00'');',
'    :P478_TOT_COSTO_OPN_GS_ADD := TO_CHAR(:P478_TOT_COSTO_OPN_GS_AUX,''999G999G990D00'');',
'    :P478_TOT_COSTO_OPN_US_ADD := TO_CHAR(:P478_TOT_COSTO_OPN_US_AUX,''999G999G990D00'');',
'    :P478_TOT_ENT_COSTO_SAC_GS_ADD := TO_CHAR(:P478_TOT_ENT_COSTO_SAC_GS_AUX,''999G999G990D00'');',
'    :P478_TOT_ENT_COSTO_SAC_US_ADD := TO_CHAR(:P478_TOT_ENT_COSTO_SAC_US_AUX,''999G999G990D00'');',
'    :P478_TOT_ENT_COSTO_OPN_GS_ADD := TO_CHAR(:P478_TOT_ENT_COSTO_OPN_GS_AUX,''999G999G990D00'');',
'    :P478_TOT_ENT_COSTO_OPN_US_ADD := TO_CHAR(:P478_TOT_ENT_COSTO_OPN_US_AUX,''999G999G990D00'');',
'    :P478_PRECIO_ARMADO := TO_CHAR(:P478_PRECIO_ARMADO_AUX,''999G999G990D00'');',
'    :P478_PRECIO_VERIFICACION := TO_CHAR(:P478_PRECIO_VERIFICACION_AUX,''999G999G990D00'');',
'    :P478_UNITARIO_OPN_GS := TO_CHAR(:P478_UNITARIO_OPN_GS_AUX,''999G999G990D00'');',
'    :P478_UNITARIO_OPS_USD := TO_CHAR(:P478_UNITARIO_OPS_USD_AUX,''999G999G990D00'');',
'    :P478_UNITARIO_SAC_GS := TO_CHAR(:P478_UNITARIO_SAC_GS_AUX,''999G999G990D00'');',
'    :P478_UNITARIO_SAC_USD := TO_CHAR(:P478_UNITARIO_SAC_USD_AUX,''999G999G990D00'');',
'    :P478_COSTO_USD := TO_CHAR(:P478_COSTO_USD_AUX,''999G999G990D00'');',
'    :P478_COSTO_OPN := TO_CHAR(:P478_COSTO_OPN_AUX,''999G999G990D00'');',
'    :P478_COSTO_OPN_USD := TO_CHAR(:P478_COSTO_OPN_USD_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_CANTIDAD_ADD 2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_COSTO_ARMADO_COEF_AUX,P478_COSTO_AGRE_UNI_AUX,P478_UNITARIO_OPN_GS,P478_UNITARIO_OPS_USD,P478_UNITARIO_SAC_GS,P478_UNITARIO_SAC_USD,P478_TOT_COSTO_SAC_GS_AUX,P478_TOT_COSTO_SAC_US_AUX,P478_TOT_COSTO_OPN_GS_AUX,P478_TOT_COSTO_OPN_US_AUX,P478_TOT_'
||'ENT_COSTO_SAC_GS_AUX,P478_TOT_ENT_COSTO_SAC_US_AUX,P478_TOT_ENT_COSTO_OPN_GS_AUX,P478_TOT_ENT_COSTO_OPN_US_AUX,P478_PRECIO_ARMADO_AUX,P478_PRECIO_VERIFICACION_AUX,P478_UNITARIO_OPN_GS_AUX,P478_UNITARIO_OPS_USD_AUX,P478_UNITARIO_SAC_GS_AUX,P478_UNITAR'
||'IO_SAC_USD_AUX,P478_COSTO_USD_AUX,P478_COSTO_OPN_AUX,P478_COSTO_OPN_USD_AUX'
,p_attribute_03=>'P478_COSTO_ARMADO_COEF_ADD,P478_COSTO_AGRE_UNI_ADD,P478_TOT_COSTO_SAC_GS_ADD,P478_TOT_COSTO_SAC_US_ADD,P478_TOT_COSTO_OPN_GS_ADD,P478_TOT_COSTO_OPN_US_ADD,P478_TOT_ENT_COSTO_SAC_GS_ADD,P478_TOT_ENT_COSTO_SAC_US_ADD,P478_TOT_ENT_COSTO_OPN_GS_ADD,P478_'
||'TOT_ENT_COSTO_OPN_US_ADD,P478_PRECIO_ARMADO,P478_PRECIO_VERIFICACION,P478_UNITARIO_OPN_GS,P478_UNITARIO_OPS_USD,P478_UNITARIO_SAC_GS,P478_UNITARIO_SAC_USD,P478_COSTO_USD,P478_COSTO_OPN,P478_COSTO_OPN_USD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_CANTIDAD_ADD'
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
 p_id=>wwv_flow_imp.id(145222653451607102)
,p_name=>'DA_MENSAJE_CANTIDAD'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_MENSAJE_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145222762905607103)
,p_event_id=>wwv_flow_imp.id(145222653451607102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_MENSAJE_CANTIDAD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145222813532607104)
,p_event_id=>wwv_flow_imp.id(145222653451607102)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P478_MENSAJE_CANTIDAD.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145225496868607130)
,p_name=>'DA_BTGUARDAR_EDITAR_DET'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(145222980961607105)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145225589129607131)
,p_event_id=>wwv_flow_imp.id(145225496868607130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145225626529607132)
,p_event_id=>wwv_flow_imp.id(145225496868607130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.ADD_COL_DET(pcod_empresa          => :P_COD_EMPRESA,',
'                         ptip_ent_sal          => :P478_TIP_ENT_SAL,',
'                         pser_ent_sal          => :P478_SER_ENT_SAL,',
'                         pnum_ent_sal          => :P478_NUM_ENT_SAL,',
'                         pcod_articulo         => :P478_COD_ARTICULO_ADD,',
'                         pcod_articulo_entrada => :P478_COD_ARTICULO_ENT_ADD,',
'                         pcod_art_corto        => :P478_COD_ART_CORTO_ADD,',
'                         pcod_art_corto_ent    => :P478_COD_ART_CORTO_ENT_ADD,',
'                         ptot_cost_sac_gs      => :P478_TOT_COSTO_SAC_GS_AUX,',
'                         ptot_cost_sac_us      => :P478_TOT_COSTO_SAC_US_AUX,',
'                         ptot_cost_opn_gs      => :P478_TOT_COSTO_OPN_GS_AUX,',
'                         ptot_cost_opn_us      => :P478_TOT_COSTO_OPN_US_AUX,',
'                         ptot_ent_co_opn_gs    => :P478_TOT_ENT_COSTO_OPN_GS_AUX,',
'                         ptot_ent_co_opn_us    => :P478_TOT_ENT_COSTO_OPN_US_AUX,',
'                         ptot_ent_co_sac_us    => :P478_TOT_ENT_COSTO_SAC_US_AUX,',
'                         pcosto                => :P478_COSTO_AUX,',
'                         pcosto_armado_gs      => :P478_COSTO_ARMADO_GS,',
'                         pcosto_usd            => :P478_COSTO_USD_AUX,',
'                         pcosto_opn_usd        => :P478_COSTO_OPN_USD_AUX,',
'                         pcosto_agregado_uni   => :P478_COSTO_AGRE_UNI_AUX,',
'                         pcosto_armado_coef    => :P478_COSTO_ARMADO_COEF_AUX,',
'                         pcosto_armado_usd     => :P478_COSTO_ARMADO_USD,',
'                         pprecio_armado        => :P478_PRECIO_ARMADO_AUX,',
'                         pprecio_verificacion  => :P478_PRECIO_VERIFICACION_AUX,',
'                         pcosto_arm_opn_usd    => :P478_COSTO_ARMADO_OPN_USD,',
'                         pcantidad             => :P478_CANTIDAD_ADD, ',
'                         pcod_sucursal         => :P478_COD_SUCURSAL,',
'                         pcod_unidad_medida    => NULL, ',
'                         pcantidad_ub          => :P478_CANTIDAD_UB_ADD,',
'                         pconfirmado           => :P478_CONFIRMADO,',
'                         pcod_iva              => NULL,',
'                         pnro_lote             => :P478_NRO_LOTE_ADD,',
'                         pfec_vencimiento      => :P478_FEC_VENCIMIENTO_ADD,',
'                         pobservacion          => :P478_OBSERVACION,',
'                         pprecio_venta         => :P478_PRECIO_VENTA_ADD,',
'                         pcosto_gs             => NULL,',
'                         pcosto_us             => NULL,',
'                         ptip_cambio_us        => :P478_TIP_CAMBIO_US,',
'                         pind_precio           => NULL, ',
'                         pprecio_lista         => :P478_PRECIO_LISTA_AUX,',
'                         pcosto_armado_opn     => :P478_COSTO_ARMADO_OPN,',
'                         ptot_ent_co_sac_gs    => :P478_TOT_ENT_COSTO_SAC_GS_AUX);',
'',
'    :P478_DESC_ARTICULO := :P478_DESC_ART_ADD;',
'    :P478_DESC_ARTICULO_ARMADO := :P478_DESC_ART_ADD_2;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTGUARDAR_EDITAR_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P478_TIP_ENT_SAL,P478_SER_ENT_SAL,P478_NUM_ENT_SAL,P478_COD_ARTICULO_ADD,P478_COD_ARTICULO_ENT_ADD,P478_COD_ART_CORTO_ADD,P478_COD_ART_CORTO_ENT_ADD,P478_TOT_COSTO_SAC_GS_AUX,P478_TOT_COSTO_SAC_US_AUX,P478_TOT_COSTO_OPN_GS_AUX,P478_TOT_'
||'COSTO_OPN_US_AUX,P478_TOT_ENT_COSTO_OPN_GS_AUX,P478_TOT_ENT_COSTO_OPN_US_AUX,P478_TOT_ENT_COSTO_SAC_US_AUX,P478_COSTO_AUX,P478_COSTO_ARMADO_GS,P478_COSTO_USD_AUX,P478_COSTO_OPN_USD_AUX,P478_COSTO_AGRE_UNI_AUX,P478_COSTO_ARMADO_COEF_AUX,P478_COSTO_ARM'
||'ADO_USD,P478_PRECIO_ARMADO_AUX,P478_PRECIO_VERIFICACION_AUX,P478_COSTO_ARMADO_OPN_USD,P478_CANTIDAD_ADD,P478_COD_SUCURSAL,P478_CANTIDAD_UB_ADD,P478_CONFIRMADO,P478_NRO_LOTE_ADD,P478_FEC_VENCIMIENTO_ADD,P478_OBSERVACION,P478_PRECIO_VENTA_ADD,P478_TIP_'
||'CAMBIO_US,P478_PRECIO_LISTA_AUX,P478_COSTO_ARMADO_OPN,P478_TOT_ENT_COSTO_SAC_GS_AUX,P478_DESC_ART_ADD,P478_DESC_ART_ADD_2'
,p_attribute_03=>'P478_DESC_ARTICULO,P478_DESC_ARTICULO_ARMADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P478_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147168179093697033)
,p_event_id=>wwv_flow_imp.id(145225496868607130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.EDIT_COL_DET(pseq_id               => :P478_EDIT_DATA_DET,',
'                          pcod_empresa          => :P_COD_EMPRESA,',
'                          ptip_ent_sal          => :P478_TIP_ENT_SAL,',
'                          pser_ent_sal          => :P478_SER_ENT_SAL,',
'                          pnum_ent_sal          => :P478_NUM_ENT_SAL,',
'                          pcod_articulo         => :P478_COD_ARTICULO_ADD,',
'                          pcod_articulo_entrada => :P478_COD_ARTICULO_ENT_ADD,',
'                          pcod_art_corto        => :P478_COD_ART_CORTO_ADD,',
'                          pcod_art_corto_ent    => :P478_COD_ART_CORTO_ENT_ADD,',
'                          ptot_cost_sac_gs      => :P478_TOT_COSTO_SAC_GS_AUX,',
'                          ptot_cost_sac_us      => :P478_TOT_COSTO_SAC_US_AUX,',
'                          ptot_cost_opn_gs      => :P478_TOT_COSTO_OPN_GS_AUX,',
'                          ptot_cost_opn_us      => :P478_TOT_COSTO_OPN_US_AUX,',
'                          ptot_ent_co_opn_gs    => :P478_TOT_ENT_COSTO_OPN_GS_AUX,',
'                          ptot_ent_co_opn_us    => :P478_TOT_ENT_COSTO_OPN_US_AUX,',
'                          ptot_ent_co_sac_us    => :P478_TOT_ENT_COSTO_SAC_US_AUX,',
'                          pcosto                => :P478_COSTO_AUX,',
'                          pcosto_armado_gs      => :P478_COSTO_ARMADO_GS,',
'                          pcosto_usd            => :P478_COSTO_USD_AUX,',
'                          pcosto_opn_usd        => :P478_COSTO_OPN_USD_AUX,',
'                          pcosto_agregado_uni   => :P478_COSTO_AGRE_UNI_ADD,',
'                          pcosto_armado_coef    => :P478_COSTO_ARMADO_COEF_AUX,',
'                          pcosto_armado_usd     => :P478_COSTO_ARMADO_USD,',
'                          pprecio_armado        => :P478_PRECIO_ARMADO_AUX,',
'                          pprecio_verificacion  => :P478_PRECIO_VERIFICACION_AUX,',
'                          pcosto_arm_opn_usd    => :P478_COSTO_ARMADO_OPN_USD,',
'                          pcantidad             => :P478_CANTIDAD_ADD, ',
'                          pcod_sucursal         => :P478_COD_SUCURSAL,',
'                          pcod_unidad_medida    => NULL, ',
'                          pcantidad_ub          => :P478_CANTIDAD_UB_ADD,',
'                          pconfirmado           => :P478_CONFIRMADO,',
'                          pcod_iva              => NULL,',
'                          pnro_lote             => :P478_NRO_LOTE_ADD,',
'                          pfec_vencimiento      => :P478_FEC_VENCIMIENTO_ADD,',
'                          pobservacion          => :P478_OBSERVACION,',
'                          pprecio_venta         => :P478_PRECIO_VENTA_ADD,',
'                          pcosto_gs             => NULL,',
'                          pcosto_us             => NULL,',
'                          ptip_cambio_us        => :P478_TIP_CAMBIO_US,',
'                          pind_precio           => NULL, ',
'                          pprecio_lista         => :P478_PRECIO_LISTA_AUX,',
'                          pcosto_armado_opn     => :P478_COSTO_ARMADO_OPN,',
'                          ptot_ent_co_sac_gs    => :P478_TOT_ENT_COSTO_SAC_GS_AUX);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTGUARDAR_EDITAR_DET EDIT_COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_TOT_COSTO_OPN_US_AUX,P478_TOT_ENT_COSTO_OPN_GS_AUX,P478_TOT_ENT_COSTO_OPN_US_AUX,P478_TOT_ENT_COSTO_SAC_US_AUX,P478_COSTO_AUX,P478_COSTO_ARMADO_GS,P478_COSTO_USD_AUX,P478_COSTO_OPN_USD_AUX,P478_COSTO_AGRE_UNI_ADD,P478_COSTO_ARMADO_COEF_AUX,P478_'
||'COSTO_ARMADO_USD,P478_PRECIO_ARMADO_AUX,P478_PRECIO_VERIFICACION_AUX,P478_COSTO_ARMADO_OPN_USD,P478_CANTIDAD_ADD,P478_COD_SUCURSAL,P478_CANTIDAD_UB_ADD,P478_CONFIRMADO,P478_NRO_LOTE_ADD,P478_FEC_VENCIMIENTO_ADD,P478_OBSERVACION,P478_PRECIO_VENTA_ADD,'
||'P478_TIP_CAMBIO_US,P478_PRECIO_LISTA_AUXP478_COSTO_ARMADO_OPN,P478_TOT_ENT_COSTO_SAC_GS_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145226542039607141)
,p_event_id=>wwv_flow_imp.id(145225496868607130)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143683999249874930)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145226684809607142)
,p_event_id=>wwv_flow_imp.id(145225496868607130)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143219907426873842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145492983256551314)
,p_name=>'DA_COD_ART_CORTO_ENT_ADD'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_COD_ART_CORTO_ENT_ADD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145493049205551315)
,p_event_id=>wwv_flow_imp.id(145492983256551314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_COD_ART_CORTO_ENT_ADD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145493172321551316)
,p_event_id=>wwv_flow_imp.id(145492983256551314)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.VALIDATE_ART_ENT(pcod_empresa      => :P_COD_EMPRESA,',
'                              pcod_art_cort_ent => :P478_COD_ART_CORTO_ENT_ADD,',
'                              pcod_articulo     => :P478_COD_ARTICULO_ADD,',
'                              pcosto            => :P478_COSTO_AUX,',
'                              pcod_moneda       => :P478_COD_MONEDA,',
'                              pcod_moneda_base  => :P478_V_COD_MONEDA_BASE,',
'                              ptip_cambio_us    => :P478_TIP_CAMBIO_US,',
'                              pcosto_armado_gs  => :P478_COSTO_ARMADO_GS,',
'                              pmensaje          => :P478_MENSAJE_COD_CORT_ENT,',
'                              pcod_articulo_ent => :P478_COD_ARTICULO_ENT_ADD);',
'',
'    :P478_COSTO := TO_CHAR(:P478_COSTO_AUX,''999G999G990D00'');                          ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_COD_ART_CORTO_ENT_ADD ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P478_COD_ART_CORTO_ENT_ADD,P478_COD_ARTICULO_ADD,P478_COSTO_AUX,P478_COD_MONEDA,P478_V_COD_MONEDA_BASE,P478_TIP_CAMBIO_US'
,p_attribute_03=>'P478_COSTO_ARMADO_GS,P478_MENSAJE_COD_CORT_ENT,P478_COD_ARTICULO_ENT_ADD,P478_COSTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_COD_ART_CORTO_ENT_ADD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145493344056551318)
,p_name=>'DA_MENSAJE_COD_CORT_ENT'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_MENSAJE_COD_CORT_ENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145493473555551319)
,p_event_id=>wwv_flow_imp.id(145493344056551318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_MENSAJE_COD_CORT_ENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145493506136551320)
,p_event_id=>wwv_flow_imp.id(145493344056551318)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P478_MENSAJE_COD_CORT_ENT.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_COD_CORT_ENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145493704585551322)
,p_name=>'DA_EDIT_DATA_DET'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_EDIT_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145493856401551323)
,p_event_id=>wwv_flow_imp.id(145493704585551322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_EDIT_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145495479760551339)
,p_event_id=>wwv_flow_imp.id(145493704585551322)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.CARGAR_DET_DATA(pedit_data            => :P478_EDIT_DATA_DET,',
'                			 pcod_articulo         => :P478_COD_ARTICULO_ADD,',
'               			     pcod_articulo_entrada => :P478_COD_ARTICULO_ENT_ADD,',
'                			 pcod_art_corto        => :P478_COD_ART_CORTO_ADD,',
'                			 pcod_art_corto_ent    => :P478_COD_ART_CORTO_ENT_ADD,',
'                			 ptot_cost_sac_gs      => :P478_TOT_COSTO_SAC_GS_AUX,',
'                			 ptot_cost_sac_us      => :P478_TOT_COSTO_SAC_US_AUX,',
'                			 ptot_cost_opn_gs      => :P478_TOT_COSTO_OPN_GS_AUX,',
'                			 ptot_cost_opn_us      => :P478_TOT_COSTO_OPN_US_AUX,',
'                			 ptot_ent_co_opn_gs    => :P478_TOT_ENT_COSTO_OPN_GS_ADD,',
'                			 ptot_ent_co_opn_us    => :P478_TOT_ENT_COSTO_OPN_US_AUX,',
'                			 ptot_ent_co_sac_us    => :P478_TOT_ENT_COSTO_SAC_US_AUX,',
'                			 pcosto                => :P478_COSTO_AUX,',
'                			 pcosto_armado_gs      => :P478_COSTO_ARMADO_GS,',
'                			 pcosto_usd            => :P478_COSTO_USD_AUX,',
'                			 pcosto_opn_usd        => :P478_COSTO_OPN_USD_AUX,',
'                			 pcosto_agregado_uni   => :P478_COSTO_AGRE_UNI_AUX,',
'                			 pcosto_armado_coef    => :P478_COSTO_ARMADO_COEF_AUX,',
'                			 pcosto_armado_usd     => :P478_COSTO_ARMADO_USD,',
'                			 pprecio_armado        => :P478_PRECIO_ARMADO_AUX,',
'                			 pprecio_verificacion  => :P478_PRECIO_VERIFICACION_AUX,',
'                			 pcosto_arm_opn_usd    => :P478_COSTO_ARMADO_OPN_USD,',
'                			 pcantidad             => :P478_CANTIDAD_ADD,',
'                			 pcantidad_ub          => :P478_CANTIDAD_UB_ADD,',
'                			 pnro_lote             => :P478_NRO_LOTE_ADD,',
'                			 pfec_vencimiento      => :P478_FEC_VENCIMIENTO_ADD,',
'                			 pprecio_venta         => :P478_PRECIO_VENTA_ADD,',
'                			 pcosto_gs             => :P478_COSTO_GS,',
'                			 pcosto_us             => :P478_COSTO_US,',
'                			 pprecio_lista         => :P478_PRECIO_LISTA_AUX,',
'                			 pcosto_armado_opn     => :P478_COSTO_ARMADO_OPN,',
'                			 ptot_ent_co_sac_gs    => :P478_TOT_ENT_COSTO_SAC_GS_AUX);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_EDIT_DATA_DET'
,p_attribute_03=>'P478_COD_ARTICULO_ADD,P478_COD_ARTICULO_ENT_ADD,P478_COD_ART_CORTO_ADD,P478_COD_ART_CORTO_ENT_ADD,P478_TOT_COSTO_SAC_GS_AUX,P478_TOT_COSTO_SAC_US_AUX,P478_TOT_COSTO_OPN_GS_AUX,P478_TOT_COSTO_OPN_US_AUX,P478_TOT_ENT_COSTO_OPN_GS_ADD,P478_TOT_ENT_COSTO'
||'_OPN_US_AUX,P478_TOT_ENT_COSTO_SAC_US_AUX,P478_COSTO_AUX,P478_COSTO_ARMADO_GS,P478_COSTO_USD_AUX,P478_COSTO_OPN_USD_AUX,P478_COSTO_AGRE_UNI_AUX,P478_COSTO_ARMADO_COEF_AUX,P478_COSTO_ARMADO_USD,P478_PRECIO_ARMADO_AUX,P478_PRECIO_VERIFICACION_AUX,P478_'
||'COSTO_ARMADO_OPN_USD,P478_CANTIDAD_ADD,P478_CANTIDAD_UB_ADD,P478_NRO_LOTE_ADD,P478_FEC_VENCIMIENTO_ADD,P478_PRECIO_VENTA_ADD,P478_COSTO_GS,P478_COSTO_US,P478_PRECIO_LISTA_AUX,P478_COSTO_ARMADO_OPN,P478_TOT_ENT_COSTO_SAC_GS_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145495846653551343)
,p_event_id=>wwv_flow_imp.id(145493704585551322)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P478_COSTO_ARMADO_COEF_ADD := TO_CHAR(:P478_COSTO_ARMADO_COEF_AUX,''999G999G990D00'');',
'    :P478_COSTO_AGRE_UNI_ADD := TO_CHAR(:P478_COSTO_AGRE_UNI_AUX,''999G999G990D00'');',
'    :P478_TOT_COSTO_SAC_GS_ADD := TO_CHAR(:P478_TOT_COSTO_SAC_GS_AUX,''999G999G990D00'');',
'    :P478_TOT_COSTO_SAC_US_ADD := TO_CHAR(:P478_TOT_COSTO_SAC_US_AUX,''999G999G990D00'');',
'    :P478_TOT_COSTO_OPN_GS_ADD := TO_CHAR(:P478_TOT_COSTO_OPN_GS_AUX,''999G999G990D00'');',
'    :P478_TOT_COSTO_OPN_US_ADD := TO_CHAR(:P478_TOT_COSTO_OPN_US_AUX,''999G999G990D00'');',
'    :P478_TOT_ENT_COSTO_SAC_GS_ADD := TO_CHAR(:P478_TOT_ENT_COSTO_SAC_GS_AUX,''999G999G990D00'');',
'    :P478_TOT_ENT_COSTO_SAC_US_ADD := TO_CHAR(:P478_TOT_ENT_COSTO_SAC_US_AUX,''999G999G990D00'');',
'    :P478_TOT_ENT_COSTO_OPN_GS_ADD := TO_CHAR(:P478_TOT_ENT_COSTO_OPN_GS_AUX,''999G999G990D00'');',
'    :P478_TOT_ENT_COSTO_OPN_US_ADD := TO_CHAR(:P478_TOT_ENT_COSTO_OPN_US_AUX,''999G999G990D00'');',
'    :P478_PRECIO_ARMADO := TO_CHAR(:P478_PRECIO_ARMADO_AUX,''999G999G990D00'');',
'    :P478_PRECIO_VERIFICACION := TO_CHAR(:P478_PRECIO_VERIFICACION_AUX,''999G999G990D00'');',
'    :P478_UNITARIO_OPN_GS := TO_CHAR(:P478_UNITARIO_OPN_GS_AUX,''999G999G990D00'');',
'    :P478_UNITARIO_OPS_USD := TO_CHAR(:P478_UNITARIO_OPS_USD_AUX,''999G999G990D00'');',
'    :P478_UNITARIO_SAC_GS := TO_CHAR(:P478_UNITARIO_SAC_GS_AUX,''999G999G990D00'');',
'    :P478_UNITARIO_SAC_USD := TO_CHAR(:P478_UNITARIO_SAC_USD_AUX,''999G999G990D00'');',
'    :P478_COSTO_USD := TO_CHAR(:P478_COSTO_USD_AUX,''999G999G990D00'');',
'    :P478_COSTO_OPN := TO_CHAR(:P478_COSTO_OPN_AUX,''999G999G990D00'');',
'    :P478_COSTO_OPN_USD := TO_CHAR(:P478_COSTO_OPN_USD_AUX,''999G999G990D00'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_EDIT_DATA_DET_2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_TOT_COSTO_SAC_GS_AUX,P478_TOT_COSTO_SAC_US_AUX,P478_TOT_COSTO_OPN_GS_AUX,P478_TOT_COSTO_OPN_US_AUX,P478_TOT_ENT_COSTO_OPN_GS_ADD,P478_TOT_ENT_COSTO_OPN_US_AUX,P478_TOT_ENT_COSTO_SAC_US_AUX,P478_COSTO_AUX,P478_COSTO_ARMADO_GS,P478_COSTO_USD_AUX,P'
||'478_COSTO_OPN_USD_AUX,P478_COSTO_AGRE_UNI_AUX,P478_COSTO_ARMADO_COEF_AUX,P478_COSTO_ARMADO_USD,P478_PRECIO_ARMADO_AUX,P478_PRECIO_VERIFICACION_AUX,P478_COSTO_ARMADO_OPN_USD,P478_CANTIDAD_UB_ADD,P478_NRO_LOTE_ADD,P478_FEC_VENCIMIENTO_ADD,P478_PRECIO_V'
||'ENTA_ADD,P478_COSTO_GS,P478_COSTO_US,P478_PRECIO_LISTA_AUX,P478_COSTO_ARMADO_OPN,P478_TOT_ENT_COSTO_SAC_GS_AUX'
,p_attribute_03=>'P478_COSTO_ARMADO_COEF_ADD,P478_COSTO_AGRE_UNI_ADD,P478_TOT_COSTO_SAC_GS_ADD,P478_TOT_COSTO_SAC_US_ADD,P478_TOT_COSTO_OPN_GS_ADD,P478_TOT_COSTO_OPN_US_ADD,P478_TOT_ENT_COSTO_SAC_GS_ADD,P478_TOT_ENT_COSTO_SAC_US_ADD,P478_TOT_ENT_COSTO_OPN_GS_ADD,P478_'
||'TOT_ENT_COSTO_OPN_US_ADD,P478_PRECIO_ARMADO,P478_PRECIO_VERIFICACION,P478_UNITARIO_OPN_GS,P478_UNITARIO_OPS_USD,P478_UNITARIO_SAC_GS,P478_UNITARIO_SAC_USD,P478_COSTO_USD,P478_COSTO_OPN,P478_COSTO_OPN_USD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_EDIT_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145495553135551340)
,p_event_id=>wwv_flow_imp.id(145493704585551322)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143683999249874930)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145493941876551324)
,p_name=>'DA_DELETE_DATA_DET'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_DELETE_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145494072556551325)
,p_event_id=>wwv_flow_imp.id(145493941876551324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145494345742551328)
,p_event_id=>wwv_flow_imp.id(145493941876551324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.DELETE_COL(pseq_id   => :P478_DELETE_DATA_DET, ',
'                        p_col     => ''COLEC_ST_CAMBIOS_CODIGOS_DET'',',
'                        patributo => 43);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DELETE_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145494434639551329)
,p_event_id=>wwv_flow_imp.id(145493941876551324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143219907426873842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145494178958551326)
,p_name=>'DA_DET_DATA_DET'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_DET_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145494263924551327)
,p_event_id=>wwv_flow_imp.id(145494178958551326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_DET_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147167893768697030)
,p_event_id=>wwv_flow_imp.id(145494178958551326)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.CARGAR_DATOS_DET(pseq_id              => :P478_DET_DATA_DET,',
'                              pcosto               => :P478_COSTO_AUX,',
'                              pcosto_usd           => :P478_COSTO_USD_AUX,',
'                              pcosto_opn           => :P478_COSTO_OPN_AUX,',
'                              pcosto_opn_usd       => :P478_COSTO_OPN_USD_AUX,',
'                              pprecio_armado       => :P478_PRECIO_ARMADO_AUX,',
'                              pprecio_verificacion => :P478_PRECIO_VERIFICACION_AUX,',
'                              pdesc_articulo       => :P478_DESC_ARTICULO_ARMADO,',
'                              pdesc_art_desarmado  => :P478_DESC_ARTICULO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_DET_DATA_DET ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_DET_DATA_DET'
,p_attribute_03=>'P478_COSTO_AUX,P478_COSTO_USD_AUX,P478_COSTO_OPN_AUX,P478_COSTO_OPN_USD_AUX,P478_PRECIO_ARMADO_AUX,P478_PRECIO_VERIFICACION_AUX,P478_DESC_ARTICULO_ARMADO,P478_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_DET_DATA_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147167913723697031)
,p_event_id=>wwv_flow_imp.id(145494178958551326)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P478_COSTO := TO_CHAR(:P478_COSTO_AUX,''999G999G990D00'');',
':P478_COSTO_US:= TO_CHAR(:P478_COSTO_USD_AUX,''999G999G990D00'');',
':P478_COSTO_OPN:= TO_CHAR(:P478_COSTO_OPN_AUX,''999G999G990D00'');',
':P478_COSTO_OPN_USD:= TO_CHAR(:P478_COSTO_OPN_USD_AUX,''999G999G990D00'');',
':P478_PRECIO_ARMADO:= TO_CHAR(:P478_PRECIO_ARMADO_AUX,''999G999G990D00'');',
':P478_PRECIO_VERIFICACION:= TO_CHAR(:P478_PRECIO_VERIFICACION_AUX,''999G999G990D00'');'))
,p_attribute_02=>'P478_COSTO_AUX,P478_COSTO_USD_AUX,P478_COSTO_OPN_AUX,P478_COSTO_OPN_USD_AUX,P478_PRECIO_ARMADO_AUX,P478_PRECIO_VERIFICACION_AUX'
,p_attribute_03=>'P478_COSTO_US,P478_COSTO_OPN,P478_COSTO_OPN_USD,P478_PRECIO_ARMADO,P478_PRECIO_VERIFICACION,P478_COSTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_DET_DATA_DET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145494705278551332)
,p_name=>'DA_MENSAJE_COD_ARTICULO'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_MENSAJE_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145494892434551333)
,p_event_id=>wwv_flow_imp.id(145494705278551332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_MENSAJE_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145494929259551334)
,p_event_id=>wwv_flow_imp.id(145494705278551332)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P478_MENSAJE_COD_ARTICULO.'
,p_attribute_02=>'Avisot'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145495077074551335)
,p_name=>'DA_MENSAJE_CONFIRM_2'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_MENSAJE_CONFIRM_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145495168061551336)
,p_event_id=>wwv_flow_imp.id(145495077074551335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_MENSAJE_CONFIRM_2'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145495275410551337)
,p_event_id=>wwv_flow_imp.id(145495077074551335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P478_MENSAJE_CONFIRM_2.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_CONFIRM_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145495926466551344)
,p_name=>'DA_BTGUARDAR'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143684212654874933)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145496089061551345)
,p_event_id=>wwv_flow_imp.id(145495926466551344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_02=>'Aviso'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145496134085551346)
,p_event_id=>wwv_flow_imp.id(145495926466551344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P478_NUM_ENT_SAL is null then',
'       begin',
'          select nvl(max(num_ent_sal), 0) + 1',
'            into :P478_NUM_ENT_SAL',
'            from ST_CAMBIOS_CODIGOS_CAB',
'           where cod_empresa = :P_COD_EMPRESA',
'             and ser_ent_sal = :P478_SER_ENT_SAL;',
'          ',
'          if :P478_NUM_ENT_SAL is null then',
'             :P478_NUM_ENT_SAL := 1 ;',
'          end if ;',
'       exception',
'          when no_data_found then',
'             :P478_NUM_ENT_SAL := 1 ;',
'          when others then',
unistr('             :P478_MENSAJE_NUM_ENT_SAL := ''Error en la tabla de entrada/salida de art\00EDculos (cabecera)'' || sqlerrm ;'),
'       end ;',
'        :P478_CONTROL_GUARDADO := 1;',
'    else',
'        :P478_CONTROL_GUARDADO := 2;',
'    end if ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTGUARDAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_NUM_ENT_SAL,P_COD_EMPRESA,P478_SER_ENT_SAL'
,p_attribute_03=>'P478_NUM_ENT_SAL,P478_MENSAJE_NUM_ENT_SAL,P478_CONTROL_GUARDADO'
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
 p_id=>wwv_flow_imp.id(147165318129697005)
,p_event_id=>wwv_flow_imp.id(145495926466551344)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P478_COD_MOTIVO_ENT_SAL = ''20''  and (STARDETE.VAL_LOTE_PRE_IN_DET(pcod_empresa => :P_COD_EMPRESA,',
'                                                                          ptip_ent_sal => :P478_TIP_ENT_SAL, ',
'                                                                          pser_ent_sal => :P478_SER_ENT_SAL) = TRUE) then',
'        :P478_MENSAJE_PRE_IN_DET := ''Lote no valido para obsolecencia '' || sqlerrm;',
'	end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTGUARDAR 2 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_COD_MOTIVO_ENT_SALP_COD_EMPRESA,P478_TIP_ENT_SAL,P478_SER_ENT_SAL'
,p_attribute_03=>'P478_MENSAJE_PRE_IN_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147166171277697013)
,p_event_id=>wwv_flow_imp.id(145495926466551344)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.GUADAR_DATOS(pcontrol_guardado      => :P478_CONTROL_GUARDADO,',
'                          pcod_empresa           => :P_COD_EMPRESA,',
'                          ptip_ent_sal           => :P478_TIP_ENT_SAL,',
'                          pser_ent_sal           => :P478_SER_ENT_SAL,',
'                          pnum_ent_sal           => :P478_NUM_ENT_SAL,',
'                          pcod_sucursal          => :P478_COD_SUCURSAL,',
'                          pcod_sucursal_ent      => :P478_COD_SUCURSAL_ENT,',
'                          ptip_cam_compra        => :P478_TIPO_CAMBIO_COMPRA,',
'                          pcoef_armado           => :P478_COEFICIENTE_ARMADO,',
'                          pfec_ent_sal           => :P478_FEC_ENT_SAL,',
'                          pcod_mot_ent_sal       => :P478_COD_MOTIVO_ENT_SAL,',
'                          pcod_moneda            => :P478_COD_MONEDA,',
'                          pfec_alta              => :P478_FECHA_ALTA,',
'                          pcod_proveedor         => :P478_COD_PROVEEDOR,',
'                          pobervacion            => :P478_OBSERVACION,',
'                          ptip_cambio_us         => :P478_TIP_CAMBIO_US,',
'                          phora_alta             => :P478_HORA_ALTA,',
'                          pcod_usuario           => :P478_COD_USUARIO,',
'                          pestado                => :P478_ESTADO,',
'                          pfecha_rechazo         => :P478_FECHA_RECHAZO,',
'                          pusuario_rechazo       => :P478_USUARIO_RECHAZO,',
'                          pfecha_alta            => :P478_FECHA_ALTA,',
'                          pfecha_aut_comercial   => :P478_FECHA_AUT_COMERCIAL,',
'                          pusuario_aut_comercial => :P478_USUARIO_AUT_COMERCIAL,',
'                          pajuste_sal_generado   => :P478_AJUSTE_SALIDA_GENERADO,',
'                          pajuste_ing_generado   => :P478_AJUSTE_INGRESO_GENERADO,',
'                          pusuario_proceso       => :P478_USUARIO_PROCESO,',
'                          pfec_proceso           => :P478_FEC_PROCESO,',
'                          pind_proceso           => :P478_IND_PROCESO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTGUARDAR 3 ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_CONTROL_GUARDADO,P_COD_EMPRESA,P478_TIP_ENT_SAL,P478_SER_ENT_SAL,P478_NUM_ENT_SAL,P478_COD_SUCURSAL,P478_COD_SUCURSAL_ENT,P478_TIPO_CAMBIO_COMPRA,P478_COEFICIENTE_ARMADO,P478_FEC_ENT_SAL,P478_COD_MOTIVO_ENT_SAL,P478_COD_MONEDA,P478_FECHA_ALTA,P4'
||'78_COD_PROVEEDOR,P478_OBSERVACION,P478_TIP_CAMBIO_US,P478_HORA_ALTA,P478_COD_USUARIO,P478_ESTADO,P478_FECHA_RECHAZO,P478_USUARIO_RECHAZO,P478_FECHA_ALTA,P478_FECHA_AUT_COMERCIAL,P478_USUARIO_AUT_COMERCIAL,P478_AJUSTE_SALIDA_GENERADO,P478_AJUSTE_INGRE'
||'SO_GENERADO,P478_USUARIO_PROCESO,P478_FEC_PROCESO,P478_IND_PROCESO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_NUM_ENT_SAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145496305752551348)
,p_name=>'DA_MENSAJE_NUM_ENT_SAL'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_MENSAJE_NUM_ENT_SAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145496499623551349)
,p_event_id=>wwv_flow_imp.id(145496305752551348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_MENSAJE_NUM_ENT_SAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145496543930551350)
,p_event_id=>wwv_flow_imp.id(145496305752551348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P478_MENSAJE_NUM_ENT_SAL.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_NUM_ENT_SAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147165066650697002)
,p_name=>'DA_MENSAJE_PRE_IN_DET'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_MENSAJE_PRE_IN_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147165190695697003)
,p_event_id=>wwv_flow_imp.id(147165066650697002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_MENSAJE_PRE_IN_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147165243485697004)
,p_event_id=>wwv_flow_imp.id(147165066650697002)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P478_MENSAJE_PRE_IN_DET.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_PRE_IN_DET'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147165484474697006)
,p_name=>'DA_ESTADO'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147165533030697007)
,p_event_id=>wwv_flow_imp.id(147165484474697006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147165671480697008)
,p_event_id=>wwv_flow_imp.id(147165484474697006)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P478_ESTADO = ''AUTORIZADO'' THEN',
'        :P478_USUARIO_AUT_COMERCIAL := :P_COD_USUARIO;',
'        :P478_FECHA_AUT_COMERCIAL := SYSDATE;		',
'    ELSIF :P478_ESTADO = ''RECHAZADO'' THEN',
'        :P478_USUARIO_RECHAZO := :P_COD_USUARIO ;',
'        :P478_FECHA_RECHAZO := SYSDATE;',
'    END IF; ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ESTADO ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_ESTADO,P_COD_USUARIO,P478_ROW_ID_AUX'
,p_attribute_03=>'P478_USUARIO_AUT_COMERCIAL,P478_FECHA_AUT_COMERCIAL,P478_USUARIO_RECHAZO,P478_FECHA_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147167646694697028)
,p_event_id=>wwv_flow_imp.id(147165484474697006)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P478_ROW_ID_AUX'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147166051344697012)
,p_event_id=>wwv_flow_imp.id(147165484474697006)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doDisable_Enable();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147166236827697014)
,p_name=>'DA_BTPROCESAR'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(143601249593479529)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147166325215697015)
,p_event_id=>wwv_flow_imp.id(147166236827697014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea procesar la informaci\00F3n?')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147166438125697016)
,p_event_id=>wwv_flow_imp.id(147166236827697014)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VMENSAJE VARCHAR2(4000);',
'VERROR EXCEPTION;',
'BEGIN',
'    IF :P478_IND_PROCESO = ''N'' THEN',
'        IF :P478_ESTADO = ''AUTORIZADO'' THEN',
'            declare',
'            vAJUSTE_SALIDA_GENERADO varchar2(600);',
'            vAJUSTE_INGRESO_GENERADO  varchar2(600);',
'            begin',
'                -- Call the procedure',
'                sp_descarga_desarmado(:P_COD_EMPRESA,',
'                                      :P478_NUM_ENT_SAL,',
'                                      vAJUSTE_SALIDA_GENERADO);',
'                                      apex_debug.error(''paso la carga 1 P478_NUM_ENT_SAL ''||:P478_NUM_ENT_SAL);',
'                                      apex_debug.error(''paso la carga 1 vAJUSTE_SALIDA_GENERADO ''||vAJUSTE_SALIDA_GENERADO);',
'            exception when others then',
'                VMENSAJE := ''Error en la descarga del producto desarmado'';',
'                raise VERROR;',
'            end;',
'            declare',
'            vAJUSTE_SALIDA_GENERADO varchar2(600);',
'            vAJUSTE_INGRESO_GENERADO  varchar2(600);',
'            begin',
'                -- Call the procedure',
'                sp_carga_armado(:P_COD_EMPRESA,',
'                                :P478_NUM_ENT_SAL,',
'                                vAJUSTE_INGRESO_GENERADO);',
'                                apex_debug.error(''paso la carga 2 P478_NUM_ENT_SAL ''||:P478_NUM_ENT_SAL);',
'                                apex_debug.error(''paso la carga 1 vAJUSTE_INGRESO_GENERADO ''||vAJUSTE_INGRESO_GENERADO);',
'            exception when others then',
'                VMENSAJE := ''Error en el ingreso del producto armado'';',
'                raise VERROR;',
'            end;',
'',
'            commit;',
'            :P478_MENSAJE_PROCESAR := ''Proceso Exitoso'';',
'        ELSE',
'            :P478_MENSAJE_PROCESAR := ''El comprobante debe estar autorizado para generar los ajustes'';',
'        END IF;',
'    ELSE',
'        :P478_MENSAJE_PROCESAR := ''El comprobante ya ha sido procesado'';',
'    END IF;',
'EXCEPTION',
'    WHEN VERROR THEN',
'    :P478_MENSAJE_PROCESAR := VMENSAJE;',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_BTPROCESAR ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_IND_PROCESO,P478_ESTADO,P_COD_EMPRESA,P478_NUM_ENT_SAL'
,p_attribute_03=>'P478_MENSAJE_PROCESAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147166663739697018)
,p_name=>'DA_MENSAJE_PROCESAR'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_MENSAJE_PROCESAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147166799870697019)
,p_event_id=>wwv_flow_imp.id(147166663739697018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_MENSAJE_PROCESAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147166842049697020)
,p_event_id=>wwv_flow_imp.id(147166663739697018)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P478_MENSAJE_PROCESAR.'
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_MENSAJE_PROCESAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147166987775697021)
,p_name=>'DA_ROW_ID_AUX'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P478_ROW_ID_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147167087755697022)
,p_event_id=>wwv_flow_imp.id(147166987775697021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P478_ROW_ID_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147167198086697023)
,p_event_id=>wwv_flow_imp.id(147166987775697021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STARDETE.CARGAR_DATOS(prow_id_aux            => :P478_ROW_ID_AUX,',
'                          ptip_ent_sal           => :P478_TIP_ENT_SAL,',
'                          pser_ent_sal           => :P478_SER_ENT_SAL,',
'                          pnum_ent_sal           => :P478_NUM_ENT_SAL,',
'                          pcod_sucursal          => :P478_COD_SUCURSAL,',
'                          pcod_sucursal_ent      => :P478_COD_SUCURSAL_ENT,',
'                          ptip_cam_compra        => :P478_TIPO_CAMBIO_COMPRA,',
'                          pcoef_armado           => :P478_COEFICIENTE_ARMADO,',
'                          pfec_ent_sal           => :P478_FEC_ENT_SAL,',
'                          pcod_mot_ent_sal       => :P478_COD_MOTIVO_ENT_SAL,',
'                          pcod_moneda            => :P478_COD_MONEDA,',
'                          pfec_alta              => :P478_FECHA_ALTA,',
'                          pcod_proveedor         => :P478_COD_PROVEEDOR,',
'                          pobervacion            => :P478_OBSERVACION,',
'                          ptip_cambio_us         => :P478_TIP_CAMBIO_US,',
'                          phora_alta             => :P478_HORA_ALTA,',
'                          pcod_usuario           => :P478_COD_USUARIO,',
'                          pestado                => :P478_ESTADO_AUX,',
'                          pfecha_rechazo         => :P478_FECHA_RECHAZO,',
'                          pusuario_rechazo       => :P478_USUARIO_RECHAZO,',
'                          pfecha_alta            => :P478_FECHA_ALTA,',
'                          pfecha_aut_comercial   => :P478_FECHA_AUT_COMERCIAL,',
'                          pusuario_aut_comercial => :P478_USUARIO_AUT_COMERCIAL,',
'                          pajuste_sal_generado   => :P478_AJUSTE_SALIDA_GENERADO,',
'                          pajuste_ing_generado   => :P478_AJUSTE_INGRESO_GENERADO,',
'                          pusuario_proceso       => :P478_USUARIO_PROCESO,',
'                          pfec_proceso           => :P478_FEC_PROCESO,',
'                          pind_proceso           => :P478_IND_PROCESO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ROW_ID_AUX ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P478_ROW_ID_AUX'
,p_attribute_03=>'P478_TIP_ENT_SAL,P478_SER_ENT_SAL,P478_NUM_ENT_SAL,P478_COD_SUCURSAL,P478_COD_SUCURSAL_ENT,P478_TIPO_CAMBIO_COMPRA,P478_COEFICIENTE_ARMADO,P478_FEC_ENT_SAL,P478_COD_MOTIVO_ENT_SAL,P478_COD_MONEDA,P478_FECHA_ALTA,P478_COD_PROVEEDOR,P478_OBSERVACION,P4'
||'78_TIP_CAMBIO_US,P478_HORA_ALTA,P478_COD_USUARIO,P478_ESTADO_AUX,P478_FECHA_RECHAZO,P478_USUARIO_RECHAZO,P478_FECHA_ALTA,P478_FECHA_AUT_COMERCIAL,P478_USUARIO_AUT_COMERCIAL,P478_AJUSTE_SALIDA_GENERADO,P478_AJUSTE_INGRESO_GENERADO,P478_USUARIO_PROCESO'
||',P478_FEC_PROCESO,P478_IND_PROCESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P478_ROW_ID_AUX'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147167357930697025)
,p_event_id=>wwv_flow_imp.id(147166987775697021)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P478_ROW_ID_AUX'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147167534999697027)
,p_event_id=>wwv_flow_imp.id(147166987775697021)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P478_ESTADO := :P478_ESTADO_AUX;'
,p_attribute_02=>'P478_ESTADO_AUX'
,p_attribute_03=>'P478_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147167250548697024)
,p_event_id=>wwv_flow_imp.id(147166987775697021)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143217611820873919)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147167723821697029)
,p_event_id=>wwv_flow_imp.id(147166987775697021)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143219907426873842)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(145223006544607106)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(141942180719064513)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P478_COD_MODULO := ''ST'';',
'',
'  :P478_V_SER_ENT_SAL := bs_busca_parametro(:P478_COD_MODULO, ''SERIE_ENT_SAL'');',
'  :P478_V_TIP_ENT_SAL := bs_busca_parametro(:P478_COD_MODULO, ''TIPO_ENT_SAL'');',
'  :P478_V_TIPO_ENVIO := bs_busca_parametro(:P478_COD_MODULO, ''TIPO_ENVIO'');',
'  :P478_V_MOTIVO_ORDEN := bs_busca_parametro(:P478_COD_MODULO, ''SALIDA_ORDEN_TRAB'');',
'  :P478_V_DEVOLUCION_ORDEN := bs_busca_parametro(:P478_COD_MODULO, ''ENTRADA_ORDEN_TRAB'');',
'  :P478_V_COD_MONEDA_BASE := bs_busca_parametro(''BS'', ''COD_MONEDA_BASE'');',
'  :P478_V_COD_MONEDA_US := bs_busca_parametro(''BS'', ''COD_MONEDA_DOL'');',
'  :P478_V_TIPO_ORDEN_TRAB := bs_busca_parametro(:P478_COD_MODULO, ''TIPO_ORDEN_TRAB'');',
'',
'  :P478_V_CAMBIA_ESTADO := busca_permiso(:P_COD_EMPRESA, ',
'                                         ''STARDETE'', ',
'                                         :P_COD_USUARIO,  ',
'                                         ''CAMBIA_ESTADO'');',
'',
'/*  if :variables.excel = ''S''  THEN',
' --  set_item_property(''B_CABECERA.PATH'', ENABLED, PROPERTY_TRUE);',
'  -- set_item_property(''B_CABECERA.BUSCAR'', ENABLED, PROPERTY_TRUE);',
'  ',
'   set_item_property(''B_CABECERA.PATH'', NAVIGABLE, PROPERTY_TRUE);  ',
'   set_item_property(''B_CABECERA.BUSCAR'', NAVIGABLE, PROPERTY_TRUE);  ',
'   set_item_property(''B_CABECERA.IMPORTAR'', NAVIGABLE, PROPERTY_TRUE);',
' 	',
' ',
'END IF;',
'',
'    if :variables.cambia_estado = ''S''  THEN ',
'   set_item_property(''B_CABECERA.ESTADO'', ENABLED, PROPERTY_TRUE);',
'    ELSE',
'    	set_item_property(''B_CABECERA.ESTADO'', ENABLED, PROPERTY_FALSE);',
'end if;*/',
'',
'',
'  declare',
'     viva varchar2(5) ;',
'  begin',
'     viva := bs_busca_parametro(:P478_COD_MODULO, ''COD_IVA_GRAVADA'');',
'     select porc_iva_venta',
'       into :P478_V_PORC_IVA',
'       from st_iva',
'      where cod_iva = viva ;',
'  exception',
'     when others then',
'        :P478_V_PORC_IVA := 0 ;',
'  end ;',
'',
'  APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COLEC_ST_CAMBIOS_CODIGOS_DET'');',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
