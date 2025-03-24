prompt --application/pages/page_00321
begin
--   Manifest
--     PAGE: 00321
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
 p_id=>321
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Llamadas pendientes a realizar '
,p_alias=>'CALLAPEN'
,p_step_title=>'Llamadas pendientes a realizar'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only ,.oj-inputdatetime-input{',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'} ',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a, .a-GV-header{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #fff6a4  !important;',
'	  color: #003a85 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIAVAZ'
,p_last_upd_yyyymmddhh24miss=>'20240524085715'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77048309878763441)
,p_plug_name=>'Llamadas pendientes a realizar '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78427901503131508)
,p_plug_name=>'Saldos'
,p_parent_plug_id=>wwv_flow_imp.id(77048309878763441)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID ROW_ID,',
'       COD_EMPRESA,',
'       COD_DEPARTAMENTO,',
'       COD_CIUDAD,',
'       COD_DISTRIBUIDOR,',
'       COD_CLIENTE_SETUP,',
'       NOMBRE_CLIENTE,',
'       CANT_REAGENDADA,     ',
'       TELEFONO,',
'       CATEGORIA_PRODUCTO,',
'       FECHA_REAGENDADA,',
'       HORA_REAGENDADA,',
'       TIPO,',
'       NRO_GARANTIA,',
'       ESTADO,',
'       FECHA_VISITA,',
'       NOM_IMAGEN,',
'       NRO_PLANILLA,',
'       SER_PLANILLA,',
'       FEC_PLANILLA,',
'       (select max(nro_comprobante)',
'          from vt_ordenes_trabajo',
'         where cod_empresa = :P321_VBLE_COD_EMPRESA',
'       	   and nro_servicio = NRO_PLANILLA',
'	  	   and tip_servicio = ''SU'') NRO_OT,',
'       (select max(fec_comprobante)',
'          from vt_ordenes_trabajo',
'         where cod_empresa = :P321_VBLE_COD_EMPRESA',
'       	   and nro_servicio = NRO_PLANILLA',
'	  	   and tip_servicio = ''SU'') FECHA_OT,',
'       (select max(ser_comprobante)',
'          from vt_ordenes_trabajo',
'         where cod_empresa = :P321_VBLE_COD_EMPRESA',
'       	   and nro_servicio = NRO_PLANILLA',
'	  	   and tip_servicio = ''SU'') SER_OT,',
'       NULL reagendar,',
'       NULL promotora',
'  FROM CA_SOLICITUD_SERVICIO_DIST S',
' WHERE ESTADO NOT IN  (''CONFIRMADO'',''ANULADO'')',
'',
'   AND (COD_DISTRIBUIDOR =',
' DECODE(:P321_DISTRIBUIDOR,''T'',COD_DISTRIBUIDOR,:P321_DISTRIBUIDOR) OR :P321_DISTRIBUIDOR IS NULL)',
'',
'   AND (CATEGORIA_PRODUCTO = DECODE(:P321_CATEGORIA_PRODUCTO,''T'',CATEGORIA_PRODUCTO,:P321_CATEGORIA_PRODUCTO) ',
'        OR :P321_CATEGORIA_PRODUCTO IS NULL)',
'',
'   AND (ORIGEN_SETUP = DECODE(:P321_ORIGEN_SETUP,''T'',ORIGEN_SETUP,:P321_ORIGEN_SETUP)',
'        OR :P321_ORIGEN_SETUP IS NULL)',
'',
'   AND (ESTADO = DECODE(:P321_ESTADO,''T'',ESTADO,:P321_ESTADO) OR :P321_ESTADO IS NULL)',
'',
'   AND (FEC_PLANILLA >= TO_DATE(:P321_FEC_PLANILLA,''DD/MM/YYYY'') OR TO_DATE(:P321_FEC_PLANILLA,''DD/MM/YYYY'') IS NULL)',
'',
'   AND (FEC_PLANILLA <= TO_DATE(:P321_FEC_PLANILLA_HASTA,''DD/MM/YYYY'') OR TO_DATE(:P321_FEC_PLANILLA_HASTA,''DD/MM/YYYY'') IS NULL)',
'',
'   AND (CANAL_COMUNICACION = DECODE(:P321_CANAL_COMUNICACION,''T'',CANAL_COMUNICACION,:P321_CANAL_COMUNICACION) OR :P321_CANAL_COMUNICACION IS NULL)',
'',
'   AND (NVL(COD_DEPARTAMENTO,''X'') = DECODE(:P321_COD_DEPARTAMENTO,''T'',NVL(COD_DEPARTAMENTO,''X''),:P321_COD_DEPARTAMENTO) OR :P321_COD_DEPARTAMENTO IS NULL)',
'',
'   AND (NVL(COD_CIUDAD,''X'') = DECODE(:P321_COD_CIUDAD,''T'',NVL(COD_CIUDAD,''X''),:P321_COD_CIUDAD) OR :P321_COD_CIUDAD IS NULL)',
'',
'   AND (CI_CLIENTE = :P321_CI_CLIENTE OR :P321_CI_CLIENTE IS NULL) ',
'',
'AND (NVL((SELECT OT.COD_PROVEEDOR',
'            FROM VT_ORDENES_TRABAJO OT',
'           WHERE OT.COD_EMPRESA = S.COD_EMPRESA ',
'             AND OT.NRO_SERVICIO = S.NRO_PLANILLA',
'             AND TIP_SERVICIO = ''SU''',
'             AND ROWNUM = 1),''T'') ',
'',
'             = ',
'',
'DECODE(:P321_PROVEEDOR,''T'',NVL((SELECT OT.COD_PROVEEDOR',
'                                  FROM VT_ORDENES_TRABAJO OT',
'                                 WHERE OT.COD_EMPRESA = S.COD_EMPRESA ',
'                                   AND OT.NRO_SERVICIO = S.NRO_PLANILLA',
'                                   AND TIP_SERVICIO = ''SU''',
'                                   AND ROWNUM = 1),''T''),:P321_PROVEEDOR) OR :P321_PROVEEDOR IS NULL)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P321_DISTRIBUIDOR,P321_CATEGORIA_PRODUCTO,P321_ORIGEN_SETUP,P321_ESTADO,P321_FEC_PLANILLA,P321_FEC_PLANILLA_HASTA,P321_CANAL_COMUNICACION,P321_COD_DEPARTAMENTO,P321_COD_CIUDAD,P321_CI_CLIENTE,P321_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Saldos'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78430846342131537)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78430995281131538)
,p_name=>'COD_DEPARTAMENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_DEPARTAMENTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Departamento'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78431038850131539)
,p_name=>'COD_CIUDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CIUDAD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Ciudad'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78431107883131540)
,p_name=>'COD_DISTRIBUIDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_DISTRIBUIDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Distribuidor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>100
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(78394725205040791)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78431266613131541)
,p_name=>'COD_CLIENTE_SETUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_CLIENTE_SETUP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Cliente Setup'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78431339298131542)
,p_name=>'NOMBRE_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nombre Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78431483162131543)
,p_name=>'CANT_REAGENDADA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANT_REAGENDADA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cant'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78431591184131544)
,p_name=>'TELEFONO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TELEFONO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('Tel\00E9fono')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>600
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78431625352131545)
,p_name=>'CATEGORIA_PRODUCTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORIA_PRODUCTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('Categor\00EDa')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78431723999131546)
,p_name=>'FECHA_REAGENDADA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_REAGENDADA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Reagendada'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78431886971131547)
,p_name=>'HORA_REAGENDADA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HORA_REAGENDADA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Hora Reagendada'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78431994531131548)
,p_name=>'TIPO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tipo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78432063964131549)
,p_name=>'NRO_GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_GARANTIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nro Garantia'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(78432144563131550)
,p_name=>'ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>30
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(79314747396721683)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79329515228814201)
,p_name=>'FECHA_VISITA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_VISITA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Visita'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79329760980814203)
,p_name=>'NOM_IMAGEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_IMAGEN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nom Imagen'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79329884934814204)
,p_name=>'NRO_PLANILLA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_PLANILLA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79329973736814205)
,p_name=>'FEC_PLANILLA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_PLANILLA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Alta'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79330018901814206)
,p_name=>'NRO_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_OT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro Ot'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79330186835814207)
,p_name=>'FECHA_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_OT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha OT'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79330279407814208)
,p_name=>'SER_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_OT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser Ot'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79331215039814218)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79331370686814219)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79331824597814224)
,p_name=>'SER_PLANILLA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_PLANILLA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser Planilla'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79681732728343230)
,p_name=>'ROW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROW_ID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79681847586343231)
,p_name=>'REAGENDAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REAGENDAR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Reagendar'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:$s(''P321_AUX_ROW_ID'',''&ROW_ID.'');'
,p_link_text=>'<span aria-hidden="true" class="fa fa-pencil-square-o"></span>'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79683052030343243)
,p_name=>'PROMOTORA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMOTORA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Promotora'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:329:&SESSION.::&DEBUG.::P329_COD_CLIENTE:&COD_DISTRIBUIDOR.'
,p_link_text=>'<span class="fa fa-user-edit" aria-hidden="true"></span>'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(78430788227131536)
,p_internal_uid=>78430788227131536
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No se encontraron datos.'
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(79335312372817575)
,p_interactive_grid_id=>wwv_flow_imp.id(78430788227131536)
,p_static_id=>'793354'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(79335551041817575)
,p_report_id=>wwv_flow_imp.id(79335312372817575)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28291777027643)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(79331215039814218)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59764179071952)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(79331824597814224)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79336055985817576)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(78430846342131537)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79336952601817579)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(78430995281131538)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79337873515817580)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(78431038850131539)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79338768091817582)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(78431107883131540)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>309
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79339636709817584)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(78431266613131541)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79340503401817585)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(78431339298131542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79341402122817587)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(78431483162131543)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>45
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79342360921817589)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(78431591184131544)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79343295061817590)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(78431625352131545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79344184474817592)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(78431723999131546)
,p_is_visible=>false
,p_is_frozen=>false
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
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79345087644817594)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(78431886971131547)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79345932966817595)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(78431994531131548)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79346898332817597)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(78432063964131549)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79347720692817599)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(78432144563131550)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79348600071817600)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(79329515228814201)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79350479360817604)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(79329760980814203)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79351324139817605)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(79329884934814204)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79352244831817607)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(79329973736814205)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79353162335817609)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(79330018901814206)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79354038591817611)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(79330186835814207)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79354954613817612)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(79330279407814208)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79798262774356161)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(79681732728343230)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79801628958378823)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(79681847586343231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80116643223352851)
,p_view_id=>wwv_flow_imp.id(79335551041817575)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(79683052030343243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79330371170814209)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(77048309878763441)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_empresa,',
'       nro_planilla,',
'       ser_planilla,',
'       fecha_estado,',
'       canal_comunicacion,',
'       observacion,',
'       origen_setup,',
'       ser_ot,',
'       nro_ot,',
'       :P321_F_AGENDADA,',
'       :P321_H_AGENDADA',
'  FROM CA_SOLICITUD_SERVICIO_DIST'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(78427901503131508)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detalle'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79330503839814211)
,p_name=>'FECHA_ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_ESTADO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Estado'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79330613599814212)
,p_name=>'CANAL_COMUNICACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANAL_COMUNICACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Canal'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>60
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79330759378814213)
,p_name=>'OBSERVACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('Observaci\00F3n')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79330836314814214)
,p_name=>'ORIGEN_SETUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORIGEN_SETUP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Origen'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>100
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(79577597305975571)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79330960544814215)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(78430846342131537)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79331058556814216)
,p_name=>'NRO_PLANILLA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_PLANILLA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(79329884934814204)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79331534790814221)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79331614746814222)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79331911664814225)
,p_name=>'SER_PLANILLA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_PLANILLA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(79331824597814224)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79332752944814233)
,p_name=>'SER_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_OT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Serie'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79332802522814234)
,p_name=>'NRO_OT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_OT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nro'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79681119563343224)
,p_name=>':P321_F_AGENDADA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>':P321_F_AGENDADA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Fecha Reag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(79681264125343225)
,p_name=>':P321_H_AGENDADA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>':P321_H_AGENDADA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Hora Reag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(79330471303814210)
,p_internal_uid=>79330471303814210
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(79494468888868531)
,p_interactive_grid_id=>wwv_flow_imp.id(79330471303814210)
,p_static_id=>'794945'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(79494624155868531)
,p_report_id=>wwv_flow_imp.id(79494468888868531)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79495189940868533)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(79330503839814211)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79496040995868536)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(79330613599814212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79496926365868538)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(79330759378814213)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79497891930868541)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(79330836314814214)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79498756896868543)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(79330960544814215)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79499699405868545)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(79331058556814216)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79539034683915141)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(79331534790814221)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79570119073959449)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(79331911664814225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79602488448056144)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(79332752944814233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79603811563056146)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(79332802522814234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79724293838664051)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(79681119563343224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(79725659447664053)
,p_view_id=>wwv_flow_imp.id(79494624155868531)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(79681264125343225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79332942282814235)
,p_plug_name=>unistr('\00BFPara cu\00E1ndo?')
,p_parent_plug_id=>wwv_flow_imp.id(77048309878763441)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79683144158343244)
,p_plug_name=>'Imagen'
,p_parent_plug_id=>wwv_flow_imp.id(77048309878763441)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT IMAGEN imagen,',
'        MIME,',
'        NOM_IMAGEN',
'  FROM CA_SOLICITUD_SERVICIO_DIST',
'  where imagen is not null',
'  and nom_imagen = ''JVC.jpg''',
'  and rownum = 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P321_AUX_ROW_ID_IMAGEN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Imagen'
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
 p_id=>wwv_flow_imp.id(80146786679643715)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encuentran datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>80146786679643715
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80147209804643720)
,p_db_column_name=>'IMAGEN'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Imagen'
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
,p_format_mask=>'IMAGE:CA_SOLICITUD_SERVICIO_DIST:IMAGEN:ROWID::MIME:NOM_IMAGEN:::::'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46969647015983631)
,p_db_column_name=>'MIME'
,p_display_order=>30
,p_column_identifier=>'F'
,p_column_label=>'Mime'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46969713277983632)
,p_db_column_name=>'NOM_IMAGEN'
,p_display_order=>40
,p_column_identifier=>'G'
,p_column_label=>'Nom Imagen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(80424665598845196)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'804247'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80122989602507105)
,p_plug_name=>'Saldos'
,p_parent_plug_id=>wwv_flow_imp.id(77048309878763441)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID ROW_ID,',
'       COD_EMPRESA,',
'       COD_DEPARTAMENTO,',
'       COD_CIUDAD,',
'       COD_DISTRIBUIDOR,',
'       COD_CLIENTE_SETUP,',
'       NOMBRE_CLIENTE,',
'       CANT_REAGENDADA,     ',
'       TELEFONO,',
'       CATEGORIA_PRODUCTO,',
'       FECHA_REAGENDADA,',
'       HORA_REAGENDADA,',
'       TIPO,',
'       NRO_GARANTIA,',
'       ESTADO,',
'       FECHA_VISITA,',
'       NOM_IMAGEN,',
'       NRO_PLANILLA,',
'       SER_PLANILLA,',
'       FEC_PLANILLA,',
'       (select max(nro_comprobante)',
'          from vt_ordenes_trabajo',
'         where cod_empresa = :P321_VBLE_COD_EMPRESA',
'       	   and nro_servicio = NRO_PLANILLA',
'	  	   and tip_servicio = ''SU'') NRO_OT,',
'       (select max(fec_comprobante)',
'          from vt_ordenes_trabajo',
'         where cod_empresa = :P321_VBLE_COD_EMPRESA',
'       	   and nro_servicio = NRO_PLANILLA',
'	  	   and tip_servicio = ''SU'') FECHA_OT,',
'       (select max(ser_comprobante)',
'          from vt_ordenes_trabajo',
'         where cod_empresa = :P321_VBLE_COD_EMPRESA',
'       	   and nro_servicio = NRO_PLANILLA',
'	  	   and tip_servicio = ''SU'') SER_OT,',
'       NULL reagendar,',
'       NULL promotora,',
'       NULL imagen',
'  FROM CA_SOLICITUD_SERVICIO_DIST S',
' WHERE ESTADO NOT IN  (''CONFIRMADO'',''ANULADO'')',
'',
'   AND (COD_DISTRIBUIDOR =',
' DECODE(:P321_DISTRIBUIDOR,''T'',COD_DISTRIBUIDOR,:P321_DISTRIBUIDOR) OR :P321_DISTRIBUIDOR IS NULL)',
'',
'   AND (CATEGORIA_PRODUCTO = DECODE(:P321_CATEGORIA_PRODUCTO,''T'',CATEGORIA_PRODUCTO,:P321_CATEGORIA_PRODUCTO) ',
'        OR :P321_CATEGORIA_PRODUCTO IS NULL)',
'',
'   AND (ORIGEN_SETUP = DECODE(:P321_ORIGEN_SETUP,''T'',ORIGEN_SETUP,:P321_ORIGEN_SETUP)',
'        OR :P321_ORIGEN_SETUP IS NULL)',
'',
'   AND (ESTADO = DECODE(:P321_ESTADO,''T'',ESTADO,:P321_ESTADO) OR :P321_ESTADO IS NULL)',
'',
'   AND (FEC_PLANILLA >= TO_DATE(:P321_FEC_PLANILLA,''DD/MM/YYYY'') OR TO_DATE(:P321_FEC_PLANILLA,''DD/MM/YYYY'') IS NULL)',
'',
'   AND (FEC_PLANILLA <= TO_DATE(:P321_FEC_PLANILLA_HASTA,''DD/MM/YYYY'') OR TO_DATE(:P321_FEC_PLANILLA_HASTA,''DD/MM/YYYY'') IS NULL)',
'',
'   AND (CANAL_COMUNICACION = DECODE(:P321_CANAL_COMUNICACION,''T'',CANAL_COMUNICACION,:P321_CANAL_COMUNICACION) OR :P321_CANAL_COMUNICACION IS NULL)',
'',
'   AND (NVL(COD_DEPARTAMENTO,''X'') = DECODE(:P321_COD_DEPARTAMENTO,''T'',NVL(COD_DEPARTAMENTO,''X''),:P321_COD_DEPARTAMENTO) OR :P321_COD_DEPARTAMENTO IS NULL)',
'',
'   AND (NVL(COD_CIUDAD,''X'') = DECODE(:P321_COD_CIUDAD,''T'',NVL(COD_CIUDAD,''X''),:P321_COD_CIUDAD) OR :P321_COD_CIUDAD IS NULL)',
'',
'   AND (CI_CLIENTE = :P321_CI_CLIENTE OR :P321_CI_CLIENTE IS NULL) ',
'',
'AND (NVL((SELECT OT.COD_PROVEEDOR',
'            FROM VT_ORDENES_TRABAJO OT',
'           WHERE OT.COD_EMPRESA = S.COD_EMPRESA ',
'             AND OT.NRO_SERVICIO = S.NRO_PLANILLA',
'             AND TIP_SERVICIO = ''SU''',
'             AND ROWNUM = 1),''T'') ',
'',
'             = ',
'',
'DECODE(:P321_PROVEEDOR,''T'',NVL((SELECT OT.COD_PROVEEDOR',
'                                  FROM VT_ORDENES_TRABAJO OT',
'                                 WHERE OT.COD_EMPRESA = S.COD_EMPRESA ',
'                                   AND OT.NRO_SERVICIO = S.NRO_PLANILLA',
'                                   AND TIP_SERVICIO = ''SU''',
'                                   AND ROWNUM = 1),''T''),:P321_PROVEEDOR) OR :P321_PROVEEDOR IS NULL)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P321_DISTRIBUIDOR,P321_CATEGORIA_PRODUCTO,P321_ORIGEN_SETUP,P321_ESTADO,P321_FEC_PLANILLA,P321_FEC_PLANILLA_HASTA,P321_CANAL_COMUNICACION,P321_COD_DEPARTAMENTO,P321_COD_CIUDAD,P321_CI_CLIENTE,P321_PROVEEDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Saldos'
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
 p_id=>wwv_flow_imp.id(80125932005507135)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>80125932005507135
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80126013240507136)
,p_db_column_name=>'ROW_ID'
,p_display_order=>10
,p_column_identifier=>'A'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80126110908507137)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80126295594507138)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80126315576507139)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80126467220507140)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80126517745507141)
,p_db_column_name=>'COD_CLIENTE_SETUP'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente Setup'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80126621279507142)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80126739012507143)
,p_db_column_name=>'CANT_REAGENDADA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cant Reagendada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80126898035507144)
,p_db_column_name=>'TELEFONO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80126998262507145)
,p_db_column_name=>'CATEGORIA_PRODUCTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Categoria Producto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80127030124507146)
,p_db_column_name=>'FECHA_REAGENDADA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Reagendada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80127178193507147)
,p_db_column_name=>'HORA_REAGENDADA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Hora Reagendada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80127293129507148)
,p_db_column_name=>'TIPO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80127388952507149)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nro Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80127407328507150)
,p_db_column_name=>'ESTADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80145337462643701)
,p_db_column_name=>'FECHA_VISITA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Fecha Visita'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80145463695643702)
,p_db_column_name=>'NOM_IMAGEN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nom Imagen'
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
 p_id=>wwv_flow_imp.id(80145573447643703)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80145605844643704)
,p_db_column_name=>'SER_PLANILLA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Ser Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80145751733643705)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fec Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80145808556643706)
,p_db_column_name=>'NRO_OT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80145970194643707)
,p_db_column_name=>'FECHA_OT'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Fecha Ot'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80146021977643708)
,p_db_column_name=>'SER_OT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80146191899643709)
,p_db_column_name=>'REAGENDAR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Reagendar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80146275408643710)
,p_db_column_name=>'PROMOTORA'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Promotora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80146331205643711)
,p_db_column_name=>'IMAGEN'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Imagen'
,p_column_type=>'STRING'
,p_format_mask=>'IMAGE:CA_SOLICITUD_SERVICIO_DIST:IMAGEN:ROWID::::::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(80166806043664265)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'801669'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROW_ID:COD_EMPRESA:COD_DEPARTAMENTO:COD_CIUDAD:COD_DISTRIBUIDOR:COD_CLIENTE_SETUP:NOMBRE_CLIENTE:CANT_REAGENDADA:TELEFONO:CATEGORIA_PRODUCTO:FECHA_REAGENDADA:HORA_REAGENDADA:TIPO:NRO_GARANTIA:ESTADO:FECHA_VISITA:NOM_IMAGEN:NRO_PLANILLA:SER_PLANILLA:F'
||'EC_PLANILLA:NRO_OT:FECHA_OT:SER_OT:REAGENDAR:PROMOTORA:IMAGEN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377053007878201261)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(77048309878763441)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79333455779814240)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_button_name=>'BT_HOY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Hoy'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:100%'';'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79333857388814244)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_button_name=>'BT_SIGUIENTE_DIA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Siguiente D\00EDa')
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:100%'';'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79333603479814242)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_button_name=>'BT_DIAS_5'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('5 d\00EDas')
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:100%'';'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79333974108814245)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_button_name=>'BT_DIAS_10'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('10 d\00EDas')
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:100%'';'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79333501366814241)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_button_name=>'BT_HORA1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'8:00 a 10:00'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:100%; margin-top:9px'';'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79334049493814246)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_button_name=>'BT_HORA2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'10:00 a 12:00'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:100%; margin-top:9px'';'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79333779474814243)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_button_name=>'BT_HORA3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'13:00 a 15:00'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:100%; margin-top:9px'';'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79334172587814247)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_button_name=>'BT_HORA4'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'15:00 a 18:00'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style=''width:100%; margin-top:9px'';'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78427582672131504)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79334310556814249)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_button_name=>'BT_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79334246777814248)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_button_name=>'BT_ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78427658220131505)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(77048309878763441)
,p_button_name=>'BT_MAINTENANCE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Bt Maintenance'
,p_button_position=>'EDIT'
,p_icon_css_classes=>'fa-tools'
,p_button_cattributes=>'style="margin-right:5px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78427814410131507)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(77048309878763441)
,p_button_name=>'BT_PROMOTORA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Promotora'
,p_button_position=>'EDIT'
,p_icon_css_classes=>'fa-user-edit'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77048575628763443)
,p_name=>'P321_ESTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ESTADO_CALLAPEN'
,p_lov=>'.'||wwv_flow_imp.id(79314747396721683)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
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
 p_id=>wwv_flow_imp.id(77048666047763444)
,p_name=>'P321_CATEGORIA_PRODUCTO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIA_PRODUCTOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CC.CATEGORIA_PRODUCTO CODIGO_RAPIDO,',
'       CC.CATEGORIA_PRODUCTO NOMBRE,',
'       1 ORDEN',
'  FROM CA_SOLICITUD_SERVICIO_DIST CC,',
'       CC_CLIENTES C,',
'       PERSONAS P ',
' WHERE CC.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND CC.COD_EMPRESA = C.COD_EMPRESA',
'   AND CC.COD_DISTRIBUIDOR = C.COD_CLIENTE',
'   AND C.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(CC.ESTADO,''S'') NOT IN (''CONFIRMADO'',''ANULADO'')',
' GROUP BY CATEGORIA_PRODUCTO',
'UNION ALL',
' SELECT ''T'' CODIGO_RAPIDO,',
'        ''TODOS'' NOMBRE,',
'        2 ORDEN',
'   FROM DUAL',
'ORDER BY 3 DESC,2;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77048771820763445)
,p_name=>'P321_FEC_PLANILLA_HASTA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(77048812560763446)
,p_name=>'P321_ORIGEN_SETUP'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:WHIRLPOOL SET UP;27,TOKYO SET UP;31,FITNES;25,TODOS;T'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77048915479763447)
,p_name=>'P321_COD_DEPARTAMENTO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DEPARTAMENTO_CALLAPEN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PROVINCIA R,',
'	   COD_PROVINCIA||'' - ''||DESCRIPCION D,',
'	   2 ORDEN',
'  FROM PROVINCIAS',
' WHERE COD_PAIS = ''PAR''--:VARIABLES.SECTOR_TARJETAS',
'UNION ALL',
' SELECT ''T'' R,',
'		''TODOS'' D,',
'		1 ORDEN',
'   FROM DUAL;'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77049060666763448)
,p_name=>'P321_PROVEEDOR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_prompt=>'Taller'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDOR_CALLAPEN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT O.COD_PROVEEDOR R, ',
'	   O.COD_PROVEEDOR||'' - ''||P.NOMBRE D, ',
'	   1 ORDEN',
'  FROM CA_SOLICITUD_SERVICIO_DIST S,VT_ORDENES_TRABAJO O, CM_PROVEEDORES PRO, PERSONAS P',
' WHERE S.COD_EMPRESA = :P_COD_EMPRESA',
'   AND S.ESTADO NOT IN  (''CONFIRMADO'',''ANULADO'')',
'   AND S.COD_EMPRESA = O.COD_EMPRESA ',
'   AND O.NRO_SERVICIO = S.NRO_PLANILLA',
'   AND O.TIP_SERVICIO = ''SU''',
'   AND PRO.COD_EMPRESA = O.COD_EMPRESA',
'   AND PRO.COD_PROVEEDOR = O.COD_PROVEEDOR',
'   AND PRO.COD_PERSONA = P.COD_PERSONA',
' GROUP BY O.COD_PROVEEDOR, P.NOMBRE',
'  UNION ALL',
'SELECT ''T'' R,',
'	   ''TODOS'' D,',
'	   2 ORDEN',
'  FROM DUAL;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77049142544763449)
,p_name=>'P321_FEC_PLANILLA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_item_default=>'SYSDATE - 1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(77049243709763450)
,p_name=>'P321_DISTRIBUIDOR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDOR_CALLAPEN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CC.COD_DISTRIBUIDOR R,',
'       CC.COD_DISTRIBUIDOR|| '' - ''||P.NOMBRE D,',
'       1 ORDEN',
'  FROM CA_SOLICITUD_SERVICIO_DIST CC, CC_CLIENTES C, PERSONAS P ',
' WHERE CC.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND CC.COD_EMPRESA = C.COD_EMPRESA',
'   AND CC.COD_DISTRIBUIDOR = C.COD_CLIENTE',
'   AND C.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(CC.ESTADO,''S'') NOT IN (''CONFIRMADO'',''ANULADO'')',
' GROUP BY CC.COD_DISTRIBUIDOR,P.NOMBRE',
'UNION ALL',
' SELECT ''T'' R, ',
'        ''TODOS'' D,',
'        2 ORDEN',
'   FROM DUAL',
'ORDER BY 3 DESC,2;'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78305306963863235)
,p_name=>'P321_VBLE_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78305771804863237)
,p_name=>'P321_NOM_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78306165118863237)
,p_name=>'P321_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78306576839863237)
,p_name=>'P321_NOM_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78306998003863237)
,p_name=>'P321_VBLE_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78307371708863237)
,p_name=>'P321_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78307766348863237)
,p_name=>'P321_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78308193054863238)
,p_name=>'P321_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78308547619863238)
,p_name=>'P321_VBLE_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78308954473863238)
,p_name=>'P321_AUX_PROMOTORA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78309339767863238)
,p_name=>'P321_AUX_ID_ELIMINAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78309755441863238)
,p_name=>'P321_MSJE_SUCCES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78310186670863238)
,p_name=>'P321_MSJE_ERROR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78427202285131501)
,p_name=>'P321_COD_CIUDAD'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Display1;n,Display2;Return2'
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
 p_id=>wwv_flow_imp.id(78427344545131502)
,p_name=>'P321_CI_CLIENTE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct i.numero R, ',
'                i.cod_ident, ',
'                p.nombre',
'  from cc_clientes c,',
'       personas p,',
'       ident_personas i',
' where c.cod_persona = p.cod_persona',
'   and p.cod_persona = i.cod_persona',
'   and c.cod_empresa = :p_cod_empresa',
' order by p.nombre',
''))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78427450182131503)
,p_name=>'P321_CANAL_COMUNICACION'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_prompt=>'Canal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CANAL_COMUNICACION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CC.CANAL_COMUNICACION CODIGO_RAPIDO,',
'	   CC.CANAL_COMUNICACION NOMBRE,',
'	   1 ORDEN',
'  FROM CA_SOLICITUD_SERVICIO_DIST CC, CC_CLIENTES C, PERSONAS P ',
' WHERE CC.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND CC.COD_EMPRESA = C.COD_EMPRESA',
'   AND CC.COD_DISTRIBUIDOR = C.COD_CLIENTE',
'   AND C.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(CC.ESTADO,''S'') NOT IN (''CONFIRMADO'',''ANULADO'')',
' GROUP BY CANAL_COMUNICACION',
'UNION ALL',
' SELECT ''T'' CODIGO_RAPIDO,',
'		''TODOS'' NOMBRE,',
'		2 ORDEN',
'   FROM DUAL',
'ORDER BY 3 DESC,2;'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79333018049814236)
,p_name=>'P321_FECHA_REAGENDADA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Reagendada'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79333385841814239)
,p_name=>'P321_HORA_REAGENDADA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_prompt=>'Hora reagendada'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79680303524343216)
,p_name=>'P321_F_AGENDADA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79680407711343217)
,p_name=>'P321_H_AGENDADA'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79681055154343223)
,p_name=>'P321_CANT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79681654857343229)
,p_name=>'P321_AUX_ROW_ID'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79682478541343237)
,p_name=>'P321_FLAG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(79332942282814235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79683416803343247)
,p_name=>'P321_AUX_ROW_ID_IMAGEN'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(377053007878201261)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79333113070814237)
,p_name=>'DA_OPEN_REGION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P321_AUX_ROW_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79682724712343240)
,p_event_id=>wwv_flow_imp.id(79333113070814237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P321_HORA_REAGENDADA := NULL;'
,p_attribute_02=>'P321_AUX_ROW_ID'
,p_attribute_03=>'P321_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79333231662814238)
,p_event_id=>wwv_flow_imp.id(79333113070814237)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79332942282814235)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79334435030814250)
,p_name=>'DA_HOY'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79333455779814240)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79678871402343201)
,p_event_id=>wwv_flow_imp.id(79334435030814250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P321_FECHA_REAGENDADA := SYSDATE;'
,p_attribute_03=>'P321_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79678928240343202)
,p_name=>'DA_SIGUIENTE'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79333857388814244)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79679025970343203)
,p_event_id=>wwv_flow_imp.id(79678928240343202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P321_Fecha_reagendada := sysdate + 1;',
'    if TO_CHAR(TO_CHAR(TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY''),''DD'')) = 6 THEN 	',
'        :P321_fecha_reagendada := TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY'') + 2;',
'    elsif TO_CHAR(TO_CHAR(TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY''),''DD'')) = 7 THEN ',
'        :P321_fecha_reagendada := TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY'') + 1;',
'    end if;	',
'END;',
''))
,p_attribute_02=>'P321_FECHA_REAGENDADA'
,p_attribute_03=>'P321_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79679136616343204)
,p_name=>'DA_DIAS_5'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79333603479814242)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79679265733343205)
,p_event_id=>wwv_flow_imp.id(79679136616343204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P321_fecha_reagendada := sysdate + 5;',
' if TO_CHAR(TO_CHAR(TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY''),''DD'')) = 6 THEN 	',
'    :P321_fecha_reagendada := TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY'') + 2;',
'elsif TO_CHAR(TO_CHAR(TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY''),''DD'')) = 7 THEN ',
'    :P321_fecha_reagendada := TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY'') + 1;',
'end if;'))
,p_attribute_02=>'P321_FECHA_REAGENDADA'
,p_attribute_03=>'P321_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79679373478343206)
,p_name=>'DA_DIAS_10'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79333974108814245)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79679412198343207)
,p_event_id=>wwv_flow_imp.id(79679373478343206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P321_fecha_reagendada := sysdate + 10;',
'if TO_CHAR(TO_CHAR(TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY''),''DD'')) = 6 THEN 	',
'    :P321_fecha_reagendada := TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY'') + 2;',
'elsif TO_CHAR(TO_CHAR(TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY''),''DD'')) = 7 THEN ',
'    :P321_fecha_reagendada := TO_DATE(:P321_fecha_reagendada,''DD/MM/YYYY'') + 1;',
'end if;	',
''))
,p_attribute_02=>'P321_FECHA_REAGENDADA'
,p_attribute_03=>'P321_FECHA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79679571450343208)
,p_name=>'DA_HORA1'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79333501366814241)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79679643222343209)
,p_event_id=>wwv_flow_imp.id(79679571450343208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P321_HORA_REAGENDADA := ''08:00 a 10:00'';'
,p_attribute_03=>'P321_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79679799620343210)
,p_name=>'DA_HORA2'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79334049493814246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79679856998343211)
,p_event_id=>wwv_flow_imp.id(79679799620343210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P321_HORA_REAGENDADA := ''10:00 a 12:00'';'
,p_attribute_02=>'P321_HORA_REAGENDADA'
,p_attribute_03=>'P321_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79679989183343212)
,p_name=>'DA_HORA3'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79333779474814243)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(79680032165343213)
,p_event_id=>wwv_flow_imp.id(79679989183343212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P321_HORA_REAGENDADA := ''13:00 a 15:00'';'
,p_attribute_03=>'P321_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79680104027343214)
,p_name=>'DA_HORA4'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79334172587814247)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79680260053343215)
,p_event_id=>wwv_flow_imp.id(79680104027343214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P321_HORA_REAGENDADA := ''15:00 a 18:00'';'
,p_attribute_03=>'P321_HORA_REAGENDADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79680853165343221)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79334246777814248)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79682383091343236)
,p_event_id=>wwv_flow_imp.id(79680853165343221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P321_FLAG := NULL;',
'    IF :P321_HORA_REAGENDADA IS NULL THEN',
'        :P321_FLAG := 1;',
'    END IF;',
'END;'))
,p_attribute_02=>'P321_HORA_REAGENDADA'
,p_attribute_03=>'P321_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79680998279343222)
,p_event_id=>wwv_flow_imp.id(79680853165343221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P321_MSJE_SUCCES := NULL;',
'    :P321_F_AGENDADA := :P321_FECHA_REAGENDADA;',
'    :P321_H_AGENDADA := :P321_HORA_REAGENDADA;',
'',
'    UPDATE CA_SOLICITUD_SERVICIO_DIST',
'       SET FECHA_REAGENDADA = :P321_FECHA_REAGENDADA,',
'           HORA_REAGENDADA = :P321_HORA_REAGENDADA',
'     WHERE ROWID = :P321_AUX_ROW_ID;',
':P321_MSJE_SUCCES := 1;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P321_FECHA_REAGENDADA,P321_HORA_REAGENDADA'
,p_attribute_03=>'P321_F_AGENDADA,P321_H_AGENDADA,P321_MSJE_SUCCES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P321_FLAG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79682591421343238)
,p_event_id=>wwv_flow_imp.id(79680853165343221)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'La visita fue reagendada.'
,p_attribute_02=>unistr('Operaci\00F3n exitosa')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle-o'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P321_MSJE_SUCCES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79682175930343234)
,p_event_id=>wwv_flow_imp.id(79680853165343221)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78427901503131508)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P321_MSJE_SUCCES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79682236375343235)
,p_event_id=>wwv_flow_imp.id(79680853165343221)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79330371170814209)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P321_MSJE_SUCCES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79682643270343239)
,p_event_id=>wwv_flow_imp.id(79680853165343221)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79332942282814235)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P321_MSJE_SUCCES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79682870807343241)
,p_name=>'DA_CANCEL'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79334310556814249)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79682994635343242)
,p_event_id=>wwv_flow_imp.id(79682870807343241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79332942282814235)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79683569789343248)
,p_name=>'DA_REFRESH_IMAGEN'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P321_AUX_ROW_ID_IMAGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79683746037343250)
,p_event_id=>wwv_flow_imp.id(79683569789343248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P321_AUX_ROW_ID_IMAGEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80122675019507102)
,p_event_id=>wwv_flow_imp.id(79683569789343248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79683144158343244)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80146432660643712)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(78427582672131504)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80146552632643713)
,p_event_id=>wwv_flow_imp.id(80146432660643712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(80122989602507105)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80146612793643714)
,p_event_id=>wwv_flow_imp.id(80146432660643712)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78427901503131508)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79331415886814220)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(78427901503131508)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Saldos - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79331792629814223)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(79330371170814209)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Detalle - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77048478994763442)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P321_VBLE_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER);',
':P321_VBLE_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P321_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P321_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P321_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
'',
':P321_VBLE_COD_MODULO := ''CA'';',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P321_VBLE_COD_MODULO,',
'                               PI_COD_FORMA  => :P321_COD_FORMA,',
'                               PI_NOM_MODULO => :P321_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P321_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P321_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P321_NOM_FORMA);',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
