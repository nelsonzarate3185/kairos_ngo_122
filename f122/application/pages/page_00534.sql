prompt --application/pages/page_00534
begin
--   Manifest
--     PAGE: 00534
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
 p_id=>534
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Par\00E1metros Comisiones - CPH')
,p_alias=>unistr('PAR\00C1METROS-COMISIONES-CPH')
,p_step_title=>unistr('Par\00E1metros Comisiones - CPH')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'#param, #escalas {',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230511152803'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52204159608560629)
,p_plug_name=>unistr('Par\00E1metros Comisiones - CPH')
,p_region_name=>'param'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CC.cod_vendedor,',
'       P.NOMBRE,',
'       CC.prom_mrgn,',
'       nvl((select descripcion from FV_ESCALA_COMISION_GRUPO',
'       where cod_empresa=cc.COD_EMPRESA',
'       and  cod_grupo= CC.grupo_escala_sm),'''')Escala_Si_alcanza',
'       ,',
'       nvl((select descripcion from FV_ESCALA_COMISION_GRUPO',
'       where cod_empresa=cc.COD_EMPRESA',
'       and  cod_grupo= CC.grupo_escala_nm),'''')Escala_No_alcanza',
'       , ',
'       NVL((select descripcion ',
'               from st_marcas m',
'               where m.cod_marca=CC.cod_division),'''')MARCA,',
'       CC.porc_com,',
'       CC.porc_dto_min,',
'       CC.porc_dto_max,',
'       CC.cod_empresa,',
'       CC.monto_min,',
'       CC.monto_max,',
'       CC.cod_division,',
'       CC.porc_com_nm,',
'       CC.monto_plus,',
'       CC.cod_cliente,',
'       CC.cod_lista_precio,',
'       null edit,',
'       null eliminar,',
'       cc.rowid',
'  from inv.fv_parametro_comisiones CC,',
'       FV_VENDEDORES V,',
'       PERSONAS P',
'  WHERE CC.COD_EMPRESA=:P_COD_EMPRESA',
'  AND   CC.COD_EMPRESA=V.COD_EMPRESA',
'  AND   CC.COD_VENDEDOR=V.COD_VENDEDOR',
'  AND   V.COD_PERSONA=P.COD_PERSONA',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Par\00E1metros Comisiones - CPH')
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
 p_id=>wwv_flow_imp.id(52204233119560630)
,p_max_row_count=>'1000000'
,p_max_rows_per_page=>'10'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>52204233119560630
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52204339166560631)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52204472022560632)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52204594979560633)
,p_db_column_name=>'PROM_MRGN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Margen %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52204807439560636)
,p_db_column_name=>'MARCA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52204902986560637)
,p_db_column_name=>'PORC_COM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Porc Com'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52205000488560638)
,p_db_column_name=>'PORC_DTO_MIN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Porc Dto Min'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52205194107560639)
,p_db_column_name=>'PORC_DTO_MAX'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Porc Dto Max'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52205291003560640)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52205370359560641)
,p_db_column_name=>'MONTO_MIN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Monto Min'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52205433882560642)
,p_db_column_name=>'MONTO_MAX'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Monto Max'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52205538558560643)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Division'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52205628938560644)
,p_db_column_name=>'PORC_COM_NM'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Porc Com Nm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52205778128560645)
,p_db_column_name=>'MONTO_PLUS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Monto Plus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52205889273560646)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52205961076560647)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52206020706560648)
,p_db_column_name=>'ESCALA_SI_ALCANZA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Escala Si Alcanza'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52206174690560649)
,p_db_column_name=>'ESCALA_NO_ALCANZA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Escala No Alcanza'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52356085826223301)
,p_db_column_name=>'EDIT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Edit'
,p_column_link=>'javascript:$s(''P469_SQL_CHK'',''&SEQ_ID.'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52356178389223302)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P534_ROWID'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52357667968223317)
,p_db_column_name=>'ROWID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52344030010371180)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'523441'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_VENDEDOR:NOMBRE:PROM_MRGN:ESCALA_SI_ALCANZA:ESCALA_NO_ALCANZA:MARCA:PORC_COM:MONTO_MIN:MONTO_MAX:PORC_COM_NM:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52356213457223303)
,p_plug_name=>'RegEscala'
,p_region_name=>'escalas'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52293924563481635)
,p_plug_name=>'Escala'
,p_parent_plug_id=>wwv_flow_imp.id(52356213457223303)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'FV_ESCALA_COMISION_GRUPO'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'cod_grupo'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>unistr('Par\00E1metros Comisiones - CPH')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52296753127481630)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52297729163481629)
,p_name=>'COD_GRUPO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_GRUPO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52298759687481629)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Descripcion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>150
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52299795857481628)
,p_name=>'ACTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Activo'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
,p_is_required=>true
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(52294462263481633)
,p_internal_uid=>52294462263481633
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(52294891065481633)
,p_interactive_grid_id=>wwv_flow_imp.id(52294462263481633)
,p_static_id=>'522949'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(52295007331481633)
,p_report_id=>wwv_flow_imp.id(52294891065481633)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(52297101239481630)
,p_view_id=>wwv_flow_imp.id(52295007331481633)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(52296753127481630)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(52298142417481629)
,p_view_id=>wwv_flow_imp.id(52295007331481633)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(52297729163481629)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(52299116805481629)
,p_view_id=>wwv_flow_imp.id(52295007331481633)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(52298759687481629)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(52300118867481628)
,p_view_id=>wwv_flow_imp.id(52295007331481633)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(52299795857481628)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52301014780481564)
,p_plug_name=>'detalle'
,p_parent_plug_id=>wwv_flow_imp.id(52356213457223303)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'FV_ESCALA_COMISION_PORC'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'MARGEN_INI,MARGEN_FIN'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(52293924563481635)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'detalle'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52303843168481563)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52304806691481562)
,p_name=>'COD_GRUPO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_GRUPO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_parent_column_id=>wwv_flow_imp.id(52297729163481629)
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52305805352481562)
,p_name=>'MARGEN_INI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MARGEN_INI'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'% Margen Inicial'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G9990D90'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52306881320481561)
,p_name=>'MARGEN_FIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MARGEN_FIN'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'% Margen Final'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G9990D90'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(52307890254481561)
,p_name=>'PORC_COM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORC_COM'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('%Comisi\00F3n')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_format_mask=>'999G990D90'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(52301530213481564)
,p_internal_uid=>52301530213481564
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(52301924325481563)
,p_interactive_grid_id=>wwv_flow_imp.id(52301530213481564)
,p_static_id=>'523020'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(52302171839481563)
,p_report_id=>wwv_flow_imp.id(52301924325481563)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(52304261909481562)
,p_view_id=>wwv_flow_imp.id(52302171839481563)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(52303843168481563)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(52305216225481562)
,p_view_id=>wwv_flow_imp.id(52302171839481563)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(52304806691481562)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(52306270051481561)
,p_view_id=>wwv_flow_imp.id(52302171839481563)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(52305805352481562)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(52307202679481561)
,p_view_id=>wwv_flow_imp.id(52302171839481563)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(52306881320481561)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(52308280896481561)
,p_view_id=>wwv_flow_imp.id(52302171839481563)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(52307890254481561)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52356300997223304)
,p_plug_name=>unistr('Vendedor - Nueva Parametrizaci\00F3n ')
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52356827983223309)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(52356300997223304)
,p_button_name=>'Guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52206208998560650)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(52204159608560629)
,p_button_name=>'Nuevo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-warning-text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52356483089223305)
,p_name=>'P534_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52356300997223304)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.cod_vendedor||'' - ''||nvl(v.descripcion, p.nombre) nombre, v.cod_vendedor',
'  FROM fv_vendedores v, personas p',
' WHERE v.cod_empresa = :P_COD_EMPRESA',
'   AND v.cod_persona = p.cod_persona',
'   AND v.estado = ''A''',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccione Vendedor-'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(52356556134223306)
,p_name=>'P534_LIMITE_SI_LLEGA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(52356300997223304)
,p_prompt=>'Escala Si Alcanza el Margen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_grupo ',
'from INV.FV_ESCALA_COMISION_GRUPO  ',
'where cod_empresa= :P_COD_EMPRESA',
'and   nvl(activo,''S'')=''S'';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccionar-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52356615180223307)
,p_name=>'P534_LIMITE_NO_LLEGA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(52356300997223304)
,p_prompt=>'Escala si NO Alcanza el Margen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_grupo ',
'from INV.FV_ESCALA_COMISION_GRUPO  ',
'where cod_empresa= :P_COD_EMPRESA',
'and   nvl(activo,''S'')=''S'';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccionar-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52356776637223308)
,p_name=>'P534_MARGEN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(52356300997223304)
,p_prompt=>'Margen %'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52357545904223316)
,p_name=>'P534_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(52204159608560629)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52357003942223311)
,p_name=>'da_reg_nuevo'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52206208998560650)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52357497426223315)
,p_event_id=>wwv_flow_imp.id(52357003942223311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P534_VENDEDOR,P534_MARGEN,P534_LIMITE_SI_LLEGA,P534_LIMITE_NO_LLEGA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52357181656223312)
,p_event_id=>wwv_flow_imp.id(52357003942223311)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52356300997223304)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52357788924223318)
,p_name=>'da_eliminar'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P534_ROWID'
,p_condition_element=>'P534_ROWID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52357821753223319)
,p_event_id=>wwv_flow_imp.id(52357788924223318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar el Registro seleccionado?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52357937563223320)
,p_event_id=>wwv_flow_imp.id(52357788924223318)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete from fv_parametro_comisiones',
'    where rowid= :P534_ROWID;',
'    commit;',
'exception',
'    when others then',
'         raise_application_error(-20000, ''Error al intentar eliminar el registro - '' || sqlerrm );',
'end ;'))
,p_attribute_02=>'P534_ROWID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52358085903223321)
,p_event_id=>wwv_flow_imp.id(52357788924223318)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52357350349223314)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'valida_guardado'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P534_VENDEDOR is null then',
' raise_application_error(-20000, ''Debe seleccionar un Vendedor.'');',
'elsif :P534_MARGEN is null then',
' raise_application_error(-20000, ''Debe cargar el Margen.'');',
'elsif :P534_LIMITE_NO_LLEGA is null then',
' raise_application_error(-20000, ''Debe seleccionar una Escala para casos de No alcanzar Margen'');',
'elsif :P534_LIMITE_SI_LLEGA is null then',
' raise_application_error(-20000, ''Debe seleccionar una Escala para casos de alcanzar el Margen'');',
'end if;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(52356827983223309)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52357225787223313)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUADAR_PARAM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    insert into fv_parametro_comisiones ',
'    (cod_vendedor,cod_empresa,prom_mrgn,grupo_escala_sm,grupo_escala_nm)',
'    values ',
'    (:P534_VENDEDOR,:P_COD_EMPRESA,:P534_MARGEN,:P534_LIMITE_SI_LLEGA,:P534_LIMITE_NO_LLEGA);',
'    commit; ',
'exception',
'    when others then   ',
'        raise_application_error(-20000, ''Error al intentar guardar los datos '' || sqlerrm );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido crear el Registro'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(52356827983223309)
,p_process_success_message=>'Registro guardado exitosamente!'
);
wwv_flow_imp.component_end;
end;
/
