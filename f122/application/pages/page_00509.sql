prompt --application/pages/page_00509
begin
--   Manifest
--     PAGE: 00509
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
 p_id=>509
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mano de Obra - STARTIMO'
,p_alias=>'STARTIMO-BUSQ'
,p_step_title=>'Mano de Obra - STARTIMO'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250106104022'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153438085683039639)
,p_plug_name=>'REPORTE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL SELECCIONAR,',
'    ROWID ROW_ID,    ',
'    cod_art_corto,',
'    cod_articulo,',
'    cod_marca,',
'    cod_familia,',
'    cod_linea,',
'    descripcion,',
'    cod_categoria ,',
'    cod_division,',
'	fec_alta,',
'	cod_rubro',
'FROM',
'    inv.st_articulos',
'WHERE ',
'    COD_EMPRESA = :P_COD_EMPRESA',
'AND COD_RUBRO = ''MO'' ',
'AND ESTADO <> ''I''   ',
'AND (COD_ART_CORTO = :P509_COD_ART_CORTO OR :P509_COD_ART_CORTO IS NULL)',
'AND (COD_ARTICULO = :P509_COD_ARTICULO OR :P509_COD_ARTICULO IS NULL)',
'AND (UPPER(DESCRIPCION) LIKE UPPER(:P509_DESCRIPCION) OR :P509_DESCRIPCION IS NULL)',
'AND (COD_FAMILIA = :P509_FAMILIA OR :P509_FAMILIA IS NULL)',
'AND (COD_MARCA = :P509_MARCA OR :P509_MARCA IS NULL)',
'AND (COD_DIVISION = :P509_DIVISION OR :P509_DIVISION IS NULL)',
'AND (COD_LINEA = :P509_LINEA OR :P509_LINEA IS NULL)',
'ORDER BY FEC_ALTA DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P509_COD_ART_CORTO,P509_COD_ARTICULO,P509_DESCRIPCION,P509_FAMILIA,P509_MARCA,P509_DIVISION,P509_LINEA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(328583859464950914)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>328583859464950914
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(328583923987950915)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seleccionar'
,p_column_link=>'f?p=&APP_ID.:504:&SESSION.::&DEBUG.::P504_P_ROW_ID_ARTICULO:#ROW_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(328584042205950916)
,p_db_column_name=>'ROW_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(328584193129950917)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(328584276490950918)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(328584550958950921)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6493312274090693)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(328584764684950923)
,p_db_column_name=>'COD_FAMILIA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Familia'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(154401338206097784)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(328584828768950924)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Linea'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(7876897259138132)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(328609303286951519)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>110
,p_column_identifier=>'AS'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(328609449750951520)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>120
,p_column_identifier=>'AT'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(6213561121448677)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(328609513828951521)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>130
,p_column_identifier=>'AU'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(154404788229087970)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627198816928991311)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>140
,p_column_identifier=>'AV'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(627198999827991312)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>150
,p_column_identifier=>'AW'
,p_column_label=>'Rubro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(328709691592958451)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3287097'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:COD_ARTICULO:COD_RUBRO:DESCRIPCION:COD_CATEGORIA:COD_FAMILIA:COD_MARCA:COD_DIVISION:COD_LINEA:FEC_ALTA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153438116792039640)
,p_plug_name=>'FILTROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154114972925222549)
,p_plug_name=>'VARIABLES A ENVIAR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154308663946956305)
,p_button_sequence=>1020
,p_button_plug_id=>wwv_flow_imp.id(153438085683039639)
,p_button_name=>'BTN_VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-circle-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153438215020039641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(153438085683039639)
,p_button_name=>'BTN_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153438390073039642)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(153438085683039639)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153438423460039643)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(153438085683039639)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style=''width:130px'';'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(154308599399956304)
,p_branch_name=>'BR_LLAMAR_PAG_504'
,p_branch_action=>'f?p=&APP_ID.:504:&SESSION.::&DEBUG.::P504_P_ROW_ID_ARTICULO:&P509_P_ROW_ID_ENVIAR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'REDIRECT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(154308961409956308)
,p_branch_name=>'BR_VOLVER_PAG_504'
,p_branch_action=>'f?p=&APP_ID.:504:&SESSION.::&DEBUG.::P504_P_ROW_ID_ARTICULO:&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'VOLVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154115015481222550)
,p_name=>'P509_P_ROW_ID_ENVIAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154114972925222549)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309095717956309)
,p_name=>'P509_COD_ART_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>unistr('C\00F3d. Articulo Corto')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_art_corto || '' - '' || descripcion D,',
'       cod_art_corto R ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_rubro = ''MO''',
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309116301956310)
,p_name=>'P509_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>unistr('C\00F3d. Articulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo || '' - '' || descripcion D,',
'       cod_articulo R ',
'  from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and cod_rubro = ''MO''',
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309241575956311)
,p_name=>'P509_CATEGORIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_categoria || '' - '' || descripcion D, ',
'       cod_categoria R',
'  from st_categorias ',
' where cod_empresa = :P_COD_EMPRESA',
'  and  nvl(estado,''P'') NOT IN (''I'',''N'') ',
'order by 1 '))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309336187956312)
,p_name=>'P509_FAMILIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_familia || '' - '' || descripcion D,',
'       cod_familia R ',
'from st_familia ',
'where cod_empresa = :P_COD_EMPRESA  ',
'and nvl(estado,''P'') NOT IN (''I'',''N'')  ',
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309450786956313)
,p_name=>'P509_MARCA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca || '' - '' || descripcion D,',
'       cod_marca R',
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309547229956314)
,p_name=>'P509_DIVISION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>unistr('Divisi\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_division || '' - ''|| desc_division D, ',
'       cod_division R',
'from st_division_articulos',
'where  nvl(estado,''P'') NOT IN (''I'',''N'') ',
'order by 1 asc'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309628598956315)
,p_name=>'P509_LINEA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea || '' - '' || descripcion D,',
'       cod_linea R ',
'from st_linea ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl(estado,''P'') NOT IN (''I'',''N'') ',
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154309752480956316)
,p_name=>'P509_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153438116792039640)
,p_prompt=>unistr('Descripci\00F3n')
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154308215320956301)
,p_name=>'DA_LLAMAR_PAG_504'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P509_P_ROW_ID_ENVIAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154308352923956302)
,p_event_id=>wwv_flow_imp.id(154308215320956301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'REDIRECT'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154308774285956306)
,p_name=>'DA_VOLVER_PAG_504'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154308663946956305)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154308814326956307)
,p_event_id=>wwv_flow_imp.id(154308774285956306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'VOLVER'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154309800313956317)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153438423460039643)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154309977614956318)
,p_event_id=>wwv_flow_imp.id(154309800313956317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153438085683039639)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154310079943956319)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153438390073039642)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154310177018956320)
,p_event_id=>wwv_flow_imp.id(154310079943956319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P509_COD_ART_CORTO,P509_COD_ARTICULO,P509_DESCRIPCION,P509_CATEGORIA,P509_FAMILIA,P509_MARCA,P509_DIVISION,P509_LINEA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154310233385956321)
,p_name=>'DA_CREAR_PAG_504'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153438215020039641)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154310466892956323)
,p_event_id=>wwv_flow_imp.id(154310233385956321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'VOLVER'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
