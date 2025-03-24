prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Combos'
,p_alias=>'CARGA-DE-COMBOS'
,p_step_title=>'Carga de Combos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P20_COD_USUARIO_CONFIRMADO").disable();',
'apex.item("P20_HORA_FIN").disable();',
'apex.item("P20_FECHA_FIN").disable();',
'',
'if (apex.item("P20_PERMITE_CONFIRMAR").getValue() == "S"){',
'    apex.item("P20_COD_USUARIO_CONFIRMADO").enable();',
'    apex.item("P20_HORA_FIN").enable();',
'    apex.item("P20_FECHA_FIN").enable();',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241029113140'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18353091982564253)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19327982990501516)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19329514228501531)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-top:9px;"'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19331805762501554)
,p_plug_name=>'Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(19329514228501531)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001, --P_COD_EMPRESA',
'       C002, --COD_COMBO',
'       C003, --cod_articulo',
'       C004, --DESCRIPCION',
'       nvl(C005,''1'')C005, --CANTIDAD',
'       C006, --COD_ART_CORTO',
'      NULL ELIMINAR',
'      ,precio_web(s.cod_articulo,''1'',0)precio,',
'      s.costo_prom costo_sac,(select costo_prom from st_articulos s2 where s2.cod_empresa=''2'' and s2.cod_articulo=s.cod_articulo)costo_opn,',
'      nvl((select sum(cant_dispon) from st_existencia_art s2 where s2.cod_empresa=s.cod_empresa and s2.cod_articulo=s.cod_articulo),0)stock',
'  FROM APEX_COLLECTIONS a, st_articulos s',
' WHERE COLLECTION_NAME = ''COL_DENOMINACION''',
' and s.cod_empresa =:P_COD_EMPRESA',
' and s.cod_articulo=C003;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Denominaciones'
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
 p_id=>wwv_flow_imp.id(19331866638501555)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('Debe seleccionar una denominaci\00F3n e ingresar una cantidad.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>19331866638501555
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12042306027285629)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12042727917285629)
,p_db_column_name=>'C001'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'C001'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12043184445285630)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12044375359285630)
,p_db_column_name=>'C006'
,p_display_order=>35
,p_column_identifier=>'G'
,p_column_label=>'Cod_Articulo Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12043547119285630)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12043904331285630)
,p_db_column_name=>'C004'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35362835382032915)
,p_db_column_name=>'C005'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(35363082915032917)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P29_AUX_SEQ_ID'',''#SEQ_ID#''),$s(''P29_AUX_CANTIDAD'',''#CANTIDAD#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175481039334656548)
,p_db_column_name=>'PRECIO'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Precio Lista'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175481124183656549)
,p_db_column_name=>'COSTO_SAC'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Costo Sac'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175481280631656550)
,p_db_column_name=>'COSTO_OPN'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'Costo Opn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(181626146387034601)
,p_db_column_name=>'STOCK'
,p_display_order=>110
,p_column_identifier=>'Q'
,p_column_label=>'Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19964620746208327)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'79365'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'C006:C003:C004:C005:PRECIO:COSTO_SAC:COSTO_OPN:STOCK:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35362576679032912)
,p_plug_name=>'Administrativo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_column=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12028719445285618)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(19327982990501516)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12039248163285626)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(19329514228501531)
,p_button_name=>'BT_INSERTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Insertar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12045847805285632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19331805762501554)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12029980408285621)
,p_name=>'P29_COD_COMBO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19327982990501516)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12030356572285621)
,p_name=>'P29_FECHA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(35362576679032912)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(12033403857285624)
,p_name=>'P29_COD_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18353091982564253)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12033800568285624)
,p_name=>'P29_NOM_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18353091982564253)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12034289143285624)
,p_name=>'P29_COD_SUCURSAL_VBLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18353091982564253)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12034612663285624)
,p_name=>'P29_NOM_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18353091982564253)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12035026903285624)
,p_name=>'P29_COD_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18353091982564253)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12035484448285625)
,p_name=>'P29_COD_FORMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18353091982564253)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12035816562285625)
,p_name=>'P29_NOM_MODULO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(18353091982564253)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12036232378285625)
,p_name=>'P29_NOM_FORMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(18353091982564253)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12036666587285625)
,p_name=>'P29_PERMITE_CONFIRMAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(18353091982564253)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12039658742285627)
,p_name=>'P29_COD_ARTICULO_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19329514228501531)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_ART_CORTO||'' - ''||S.DESCRIPCION D, ',
'	   S.COD_ARTICULO R  ',
'  FROM st_articulos S',
' WHERE S.COD_EMPRESA = :P29_COD_EMPRESA',
'   AND S.cod_rubro=''PR''  ;'))
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
 p_id=>wwv_flow_imp.id(12040807152285627)
,p_name=>'P29_CANTIDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19329514228501531)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12041631347285628)
,p_name=>'P29_ERROR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19329514228501531)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35362061167032907)
,p_name=>'P29_COD_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19327982990501516)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_ART_CORTO||'' - ''||S.DESCRIPCION D, ',
'	   S.COD_ARTICULO R  ',
'  FROM st_articulos S',
' WHERE S.COD_EMPRESA = :P29_COD_EMPRESA',
'   AND S.cod_rubro=''PR''  ;'))
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
 p_id=>wwv_flow_imp.id(35362117911032908)
,p_name=>'P29_DESCRIPCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19327982990501516)
,p_prompt=>'Descripcion'
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
 p_id=>wwv_flow_imp.id(35362201032032909)
,p_name=>'P29_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(35362576679032912)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ACTIVO''D, ''A''C',
'from dual',
'UNION ALL',
'select ''INACTIVO''D, ''I''C',
'from dual'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35362323972032910)
,p_name=>'P29_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(35362576679032912)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(35363138307032918)
,p_name=>'P29_AUX_SEQ_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19329514228501531)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35363286831032919)
,p_name=>'P29_AUX_CANTIDAD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19329514228501531)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35363945776032926)
,p_name=>'P29_COMBO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19327982990501516)
,p_prompt=>'Combos'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||'' - ''||COD_COMBO|| '' Codigos: ''||f_codigo_combo(c.cod_combo,''CORTO'') D, COD_COMBO',
'from vt_combo_cab c',
'where cod_empresa=:P_COD_EMPRESA;'))
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
 p_id=>wwv_flow_imp.id(161539912709493238)
,p_name=>'P29_CANTIDAD_VENDIDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19327982990501516)
,p_prompt=>'Cantidad Vendida'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12054099305285637)
,p_name=>'DA_LLENA_DESC'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12054590799285637)
,p_event_id=>wwv_flow_imp.id(12054099305285637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P29_COD_SUCURSAL IS NOT NULL THEN',
'  DECLARE',
'    VALERTA NUMBER;',
'  BEGIN',
'    SELECT DESCRIPCION',
'      INTO :P29_DESC_SUCURSAL',
'      FROM SUCURSALES',
'     WHERE COD_EMPRESA = :P29_COD_EMPRESA',
'       AND COD_SUCURSAL = :P29_COD_SUCURSAL;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P29_DESC_SUCURSAL := NULL;',
unistr('      RAISE_APPLICATION_ERROR(-20000,''NO SE ENCUENTRA C\00D3DIGO DE SUCURSAL.'');'),
'    WHEN OTHERS THEN',
'      :P29_DESC_SUCURSAL := NULL;',
'      RAISE_APPLICATION_ERROR(-20000,''ERROR EN LA TABLA DE SUCURSALES ''||SQLERRM);',
'  END;',
'END IF;'))
,p_attribute_02=>'P29_COD_EMPRESA,P29_COD_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12057713118285638)
,p_name=>'DA_INSERTAR_DETALLE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12039248163285626)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12058228475285639)
,p_event_id=>wwv_flow_imp.id(12057713118285638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'vtcombo.INSERTAR_COLECCION(PI_COD_EMPRESA       => :P29_COD_EMPRESA,',
'    					    PI_COD_COMBO      => :P29_COD_COMBO,',
'    					    PI_COD_ARTICULO  => :P29_COD_ARTICULO_DET,    					  ',
'    					    PI_CANTIDAD          => :P29_CANTIDAD );'))
,p_attribute_02=>'P29_CANTIDAD,P29_COD_EMPRESA,P29_COD_COMBO,P29_COD_ARTICULO_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12058730082285639)
,p_event_id=>wwv_flow_imp.id(12057713118285638)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19331805762501554)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12059206126285639)
,p_event_id=>wwv_flow_imp.id(12057713118285638)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P29_COD_ARTICULO_DET := NULL;',
':P29_CANTIDAD := NULL;',
''))
,p_attribute_03=>'P29_COD_ARTICULO_DET,P29_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12054961798285637)
,p_name=>'DA_NOT_NULL'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12055904195285638)
,p_event_id=>wwv_flow_imp.id(12054961798285637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P29_CANTIDAD IS NULL THEN',
'    :P29_ERROR := 1;',
'END IF;'))
,p_attribute_02=>'P29_CANTIDAD'
,p_attribute_03=>'P29_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12056457570285638)
,p_event_id=>wwv_flow_imp.id(12054961798285637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar una cantidad mayor a 0.'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P29_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12055412485285638)
,p_event_id=>wwv_flow_imp.id(12054961798285637)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P29_ERROR := 0;'
,p_attribute_03=>'P29_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12051342582285636)
,p_name=>'DA_REFRESH_DENOMINACION'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12051845231285636)
,p_event_id=>wwv_flow_imp.id(12051342582285636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19329514228501531)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12056818908285638)
,p_name=>'DA_LLENA_SENCILLO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_COD_CAJERO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12057376686285638)
,p_event_id=>wwv_flow_imp.id(12056818908285638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT BASE',
'      INTO :P29_BASE_SENCILLO',
'      FROM VT_FONDO_SENCILLO_BASE',
'     WHERE COD_EMPRESA = :P29_COD_EMPRESA ',
'       AND COD_USUARIO = :P29_COD_CAJERO',
'       AND COD_SUCURSAL = :P29_COD_SUCURSAL;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'        :P29_BASE_SENCILLO := 0;',
'END;'))
,p_attribute_02=>'P29_COD_EMPRESA,P29_COD_CAJERO'
,p_attribute_03=>'P29_BASE_SENCILLO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12052241726285636)
,p_name=>'DA_CALCULAR_DIFE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_TOTAL_MONTO,P29_BASE_SENCILLO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12052733421285637)
,p_event_id=>wwv_flow_imp.id(12052241726285636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P29_DIFE_SENCILLO := NVL(:P29_TOTAL_MONTO,0) - NVL(:P29_BASE_SENCILLO,0);'
,p_attribute_02=>'P29_TOTAL_MONTO ,P29_BASE_SENCILLO'
,p_attribute_03=>'P29_DIFE_SENCILLO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12053126634285637)
,p_name=>'DA_LLENA'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_COD_SUCURSAL_VBLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12053629982285637)
,p_event_id=>wwv_flow_imp.id(12053126634285637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P29_COD_COMBO IS NULL THEN',
'  BEGIN',
'    SELECT NVL( MAX( TO_NUMBER(COD_COMBO) ), 0 ) + 1',
'      INTO :P29_COD_COMBO',
'      FROM VT_COMBO_CAB ',
'     WHERE COD_EMPRESA = :P29_COD_EMPRESA;',
'    IF :P29_COD_COMBO IS NULL THEN',
'      :P29_COD_COMBO := 1;',
'    END IF;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      :P29_COD_COMBO := 1;',
'    WHEN OTHERS THEN',
'      RAISE_APPLICATION_ERROR(-20000, ''ERROR EN LA TABLA DE COMBO '' || SQLERRM );',
'  END;',
'END IF;'))
,p_attribute_02=>'P29_COD_SUCURSAL_VBLE,P29_COD_COMBO,P29_COD_EMPRESA'
,p_attribute_03=>'P29_COD_COMBO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12059669090285639)
,p_name=>'DA_DISABLE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_PERMITE_CONFIRMAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12061432554285640)
,p_name=>'DA_BUSCA_combo'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12028719445285618)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12064436326285641)
,p_event_id=>wwv_flow_imp.id(12061432554285640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_DENOMINACION'');',
'',
'VTCOMBO.BUSCAR_COMBO(PI_COD_COMBO 			=>  :P29_COD_COMBO,',
'						  Pi_COD_EMPRESA 			=>  :P_COD_EMPRESA,',
'						  PO_FECHA 					=>  :P29_FECHA,',
'						  PO_COD_ARTICULO 			=>  :P29_COD_ARTICULO,',
'						  PO_DESCRIPCION 			=>  :P29_DESCRIPCION,',
'						  PO_ESTADO 		=>  :P29_ESTADO,',
'						  PO_COD_USUARIO 				=>  :P29_COD_USUARIO,',
'              PO_CANTIDAD_VENDIDA =>  :P29_CANTIDAD_VENDIDA);'))
,p_attribute_02=>'P29_COD_COMBO,P_COD_EMPRESA'
,p_attribute_03=>'P29_FECHA,P29_COD_USUARIO,P29_DESCRIPCION,P29_COD_ARTICULO,P29_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12061976611285640)
,p_event_id=>wwv_flow_imp.id(12061432554285640)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19327982990501516)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12062945324285640)
,p_event_id=>wwv_flow_imp.id(12061432554285640)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19329514228501531)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12063980818285641)
,p_event_id=>wwv_flow_imp.id(12061432554285640)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19331805762501554)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35363306886032920)
,p_name=>'da_borrar'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35363401574032921)
,p_event_id=>wwv_flow_imp.id(35363306886032920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el art\00EDculo del detalle?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35363574509032922)
,p_event_id=>wwv_flow_imp.id(35363306886032920)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''COL_DENOMINACION'',',
'        p_seq => :P29_AUX_SEQ_ID);',
'End;'))
,p_attribute_02=>'P29_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35363629758032923)
,p_event_id=>wwv_flow_imp.id(35363306886032920)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19331805762501554)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35364076275032927)
,p_name=>'da_combo'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_COMBO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35364139002032928)
,p_event_id=>wwv_flow_imp.id(35364076275032927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P29_COD_COMBO:=:P29_COMBO;'
,p_attribute_02=>'P29_COMBO'
,p_attribute_03=>'P29_COD_COMBO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(35364232576032929)
,p_name=>'DA_BUSCA_combo_D'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_COMBO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(35364386163032930)
,p_event_id=>wwv_flow_imp.id(35364232576032929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_DENOMINACION'');',
'VTCOMBO.BUSCAR_COMBO(PI_COD_COMBO 			=>  :P29_COD_COMBO,',
'						  Pi_COD_EMPRESA 			=>  :P_COD_EMPRESA,',
'						  PO_FECHA 					=>  :P29_FECHA,',
'						  PO_COD_ARTICULO 			=>  :P29_COD_ARTICULO,',
'						  PO_DESCRIPCION 			=>  :P29_DESCRIPCION,',
'						  PO_ESTADO 		=>  :P29_ESTADO,',
'						  PO_COD_USUARIO 				=>  :P29_COD_USUARIO,',
'              PO_CANTIDAD_VENDIDA =>  :P29_CANTIDAD_VENDIDA); '))
,p_attribute_02=>'P29_COD_COMBO,P_COD_EMPRESA'
,p_attribute_03=>'P29_FECHA,P29_COD_USUARIO,P29_DESCRIPCION,P29_COD_ARTICULO,P29_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35364417627032931)
,p_event_id=>wwv_flow_imp.id(35364232576032929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19327982990501516)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35364502091032932)
,p_event_id=>wwv_flow_imp.id(35364232576032929)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19329514228501531)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(35364692897032933)
,p_event_id=>wwv_flow_imp.id(35364232576032929)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19331805762501554)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12049668168285635)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12049267152285634)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''COL_DENOMINACION'');',
':P_COD_MODULO := ''VT'';',
'',
':P29_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P29_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P29_NOM_EMPRESA := :P_NOM_EMPRESA;',
' ',
':P29_COD_MODULO := NVL(:P_COD_MODULO,''VT'');',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P29_COD_MODULO,',
'                               PI_COD_FORMA  => :P29_COD_FORMA,',
'                               PI_NOM_MODULO => :P29_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P29_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P29_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P29_NOM_FORMA);',
' ',
'',
' ',
':P29_FECHA := SYSDATE;',
' ',
':P29_ESTADO := ''A'';',
'',
'IF :P29_COD_COMBO IS NULL THEN',
'    BEGIN',
'        SELECT NVL( MAX(TO_NUMBER( COD_COMBO) ), 0 ) + 1',
'          INTO :P29_COD_COMBO',
'          FROM VT_COMBO_CAB ',
'         WHERE COD_EMPRESA = :P29_COD_EMPRESA;',
'        IF :P29_COD_COMBO IS NULL THEN',
'            :P29_COD_COMBO := 1;',
'        END IF;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                :P29_COD_COMBO := 1;',
'        WHEN OTHERS THEN',
'            RAISE_APPLICATION_ERROR(-20000, ''ERROR EN LA TABLA DE COMBO '' || SQLERRM );',
'    END;',
'END IF;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12050042010285635)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDADO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  vexiste varchar2(10) := ''N'';',
'BEGIN',
'  IF TO_NUMBER(:P29_COD_COMBO) IS NULL THEN',
'    BEGIN',
'      SELECT NVL(MAX(TO_NUMBER(cod_combo)), 0) + 1',
'        INTO :P29_cod_combo',
'        FROM VT_COMBO_CAB',
'       WHERE COD_EMPRESA = :P29_COD_EMPRESA;',
'      IF :P29_COD_COMBO IS NULL THEN',
'        :P29_COD_COMBO := 1;',
'      END IF;',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        :P29_COD_COMBO := 1;',
'      WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,',
'                                ''ERROR EN LA TABLA DE COMBOS'' || SQLERRM);',
'    END;',
'  END IF;',
'  ',
'  BEGIN',
'    SELECT ''S''',
'      INTO VEXISTE',
'      FROM VT_COMBO_CAB',
'     WHERE COD_EMPRESA = :P29_COD_EMPRESA',
'       and cod_combo = :P29_COD_COMBO;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VEXISTE := ''N'';',
'  END;',
'  IF APEX_COLLECTION.COLLECTION_MEMBER_COUNT(p_collection_name => ''COL_DENOMINACION'') != 0 THEN',
'    if vexiste = ''S'' THEN',
'     ',
'      UPDATE vt_combo_cab',
'         SET COD_ARTICULO = :P29_COD_ARTICULO,',
'             DESCRIPCION  = :P29_DESCRIPCION,',
'             ESTADO       = :P29_ESTADO',
'       WHERE cod_empresa = :P29_COD_EMPRESA',
'         AND COD_COMBO = :P29_COD_COMBO;',
'',
'    ',
'      DELETE VT_COMBO_DET',
'       WHERE cod_empresa = :P29_COD_EMPRESA',
'         AND COD_COMBO = :P29_COD_COMBO;',
'',
'    ',
'      FOR C IN (SELECT SEQ_ID,',
'                       C001, --P_COD_EMPRESA',
'                       C002, --cod_combo',
'                       C003, --cod_Articulo',
'                       C004, --decripcionm',
'                       C005 --CANTIDAD',
'                  FROM APEX_COLLECTIONS',
'                 WHERE COLLECTION_NAME = ''COL_DENOMINACION'') LOOP',
'       ',
'        INSERT INTO vt_combo_det',
'          (COD_EMPRESA, cod_combo, cod_articulo, CANTIDAD)',
'        VALUES',
'          (C.C001, TO_NUMBER(C.C002), C.C003, C.C005);',
'     ',
'      END LOOP;',
'    ',
'    ELSE',
'      INSERT INTO vt_combo_cab',
'        (COD_EMPRESA,',
'         COD_COMBO,',
'         COD_ARTICULO,',
'         DESCRIPCION,',
'         ESTADO,',
'         COD_USUARIO,',
'         FEC_ALTA)',
'      VALUES',
'        (:P29_COD_EMPRESA,',
'         ',
'         TO_NUMBER(:P29_cod_combo),',
'         :P29_COD_ARTICULO,',
'         :P29_DESCRIPCION,',
'         :P29_ESTADO,',
'         :P29_COD_USUARIO,',
'         TO_DATE(:P29_FECHA, ''DD/MM/YYYY HH24:MI:SS''));',
'    ',
'    ',
'  ',
'    FOR C IN (SELECT SEQ_ID,',
'                     C001, --P_COD_EMPRESA',
'                     C002, --cod_combo',
'                     C003, --cod_Articulo',
'                     C004, --descripcion',
'                     C005 --cantidad',
'                FROM APEX_COLLECTIONS',
'               WHERE COLLECTION_NAME = ''COL_DENOMINACION'') LOOP',
'      INSERT INTO vt_combo_det',
'        (COD_EMPRESA, cod_combo, cod_articulo, CANTIDAD)',
'      VALUES',
'        (C.C001, TO_NUMBER(C.C002), C.C003, C.C005);',
'',
'    END LOOP;',
'    END IF;',
'  ELSE',
'    RAISE_APPLICATION_ERROR(-20000,',
'                            ''Debe ingresar datos en el detalle para continuar.'');',
'  END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12045847805285632)
,p_process_success_message=>unistr('La transacci\00F3n fue guardada con el n\00FAmero de planilla: &P29_COD_COMBO.')
);
wwv_flow_imp.component_end;
end;
/
