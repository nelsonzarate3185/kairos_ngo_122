prompt --application/pages/page_00211
begin
--   Manifest
--     PAGE: 00211
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
 p_id=>211
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Categorias Venta Cruzada'
,p_alias=>'CATEGORIAS-VENTA-CRUZADA'
,p_step_title=>'Categorias Venta Cruzada'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 44;',
'}',
'',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P196_CAMBIA_ESTADO'', cb.value, false);',
'      $s(''P196_ACTIVO_AUX'', ''N'');',
'  } else {',
'      $s(''P196_CAMBIA_ESTADO'', cb.value, false);',
'      $s(''P196_ACTIVO_AUX'', ''S'');',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906153519'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90891606407438612)
,p_plug_name=>'Categorias Venta Cruzada'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90888464389438580)
,p_plug_name=>'B_ORIGEN'
,p_parent_plug_id=>wwv_flow_imp.id(90891606407438612)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT O.COD_EMPRESA,',
'       O.COD_CATEGORIA,',
'       CAT.DESCRIPCION,',
'       O.fecha_inicio,',
'       O.FECHA_FIN,',
'       O.observacion, o.estado,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => o.ROWID,',
'                           p_attributes  => (case O.estado',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end )||''onclick="seleccionar(this)"'' ) ACTIVO,',
'       NULL EDITAR,',
'       NULL ELIMINAR, O.ROWID ID_REGISTRO',
'  FROM VT_CATEGORIAS_venta_cruzada O, ST_CATEGORIAS CAT',
' WHERE O.COD_EMPRESA = :P_COD_EMPRESA',
' AND O.COD_EMPRESA=CAT.COD_EMPRESA',
' AND O.COD_CATEGORIA=CAT.COD_CATEGORIA',
'ORDER BY CAT.DESCRIPCION DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P211_VBLE_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_ORIGEN'
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
 p_id=>wwv_flow_imp.id(90890250177438598)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>90890250177438598
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47423329249945378)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47424104959945379)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47424571008945379)
,p_db_column_name=>'ACTIVO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47424904048945379)
,p_db_column_name=>'EDITAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P211_ABRIR_REGION'',''#ID_REGISTRO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47425388607945380)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P196_AUX_ID_ELIMINAR'',''#ID_REGISTRO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45558652739746520)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45558730978746521)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45558813649746522)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Fin'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45558977919746523)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45559011319746524)
,p_db_column_name=>'ESTADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45559627645746530)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Id Registro'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(92455149400113303)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'450330'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_CATEGORIA:DESCRIPCION:FECHA_FIN:FECHA_INICIO:OBSERVACION:ACTIVO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90888582452438582)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(90891606407438612)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90891210909438608)
,p_plug_name=>'AGREGAR/ EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(90891606407438612)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47422715075945372)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(90891606407438612)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47433067122945386)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(90891210909438608)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="top-margin:9px;"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45559133907746525)
,p_name=>'P211_FECHA_INICIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(90891210909438608)
,p_prompt=>'Fecha Inicio'
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
 p_id=>wwv_flow_imp.id(45559276162746526)
,p_name=>'P211_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(90891210909438608)
,p_prompt=>'Fecha Fin'
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
 p_id=>wwv_flow_imp.id(47426022829945381)
,p_name=>'P211_CAMBIA_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(90888464389438580)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47426492255945383)
,p_name=>'P211_ACTIVO_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(90888464389438580)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47426897753945383)
,p_name=>'P211_AUX_ID_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(90888464389438580)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47427295471945383)
,p_name=>'P211_ABRIR_REGION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(90888464389438580)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47427983840945384)
,p_name=>'P211_VBLE_MULT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47428365802945384)
,p_name=>'P211_VBLE_DIV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47428759022945384)
,p_name=>'P211_VBLE_COD_RELACION_UM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47429173875945384)
,p_name=>'P211_VBLE_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47429555476945384)
,p_name=>'P211_VBLE_NOM_MODULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47429906086945384)
,p_name=>'P211_VBLE_COD_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47430329453945385)
,p_name=>'P211_VBLE_NOM_FORMA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47430703242945385)
,p_name=>'P211_VBLE_COD_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47431126940945385)
,p_name=>'P211_VBLE_NOM_EMPRESA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47431577899945385)
,p_name=>'P211_VBLE_COD_SUCURSAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47431955828945385)
,p_name=>'P211_VBLE_NOM_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47432349329945385)
,p_name=>'P211_VBLE_COD_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(90888582452438582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47433442170945386)
,p_name=>'P211_COD_CATEGORIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(90891210909438608)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47433856189945386)
,p_name=>'P211_OBSERVACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(90891210909438608)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(47434227453945386)
,p_name=>'P211_ACTIVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(90891210909438608)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47434675748945386)
,p_name=>'P211_ERROR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(90891210909438608)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47435488313945389)
,p_name=>'DA_ABRIR_REGION'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47422715075945372)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47436949718945391)
,p_event_id=>wwv_flow_imp.id(47435488313945389)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P211_COD_CATEGORIA,P211_OBSERVACION,P211_ACTIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47435905765945390)
,p_event_id=>wwv_flow_imp.id(47435488313945389)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90891210909438608)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47437300880945391)
,p_name=>'DA_OCULTAR_REGION'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47437818790945391)
,p_event_id=>wwv_flow_imp.id(47437300880945391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90891210909438608)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47438220130945391)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P211_ABRIR_REGION'
,p_condition_element=>'P211_ABRIR_REGION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47439768893945391)
,p_event_id=>wwv_flow_imp.id(47438220130945391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C.COD_CATEGORIA,C.ESTADO, C.fecha_inicio ,C.fecha_fin',
'      INTO :P211_COD_CATEGORIA,',
'         ',
'           :P211_ACTIVO, :P211_FECHA_INICIO, :P211_FECHA_FIN',
'      FROM VT_CATEGORIAS_venta_cruzada C, ST_CATEGORIAS S',
'     WHERE C.ROWID= :P211_ABRIR_REGION',
'     AND C.COD_EMPRESA = :P_COD_EMPRESA',
'     AND C.COD_EMPRESA=S.COD_EMPRESA',
'     AND C.COD_CATEGORIA=S.COD_CATEGORIA',
'     ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''No existe el c\00F3digo ''||:P211_ABRIR_REGION);'),
'END;',
'',
''))
,p_attribute_02=>'P211_ABRIR_REGION'
,p_attribute_03=>'P211_COD_CATEGORIA,P211_OBSERVACION,P211_ACTIVO,P211_FECHA_INICIO,P211_FECHA_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47438703659945391)
,p_event_id=>wwv_flow_imp.id(47438220130945391)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90891210909438608)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47439235731945391)
,p_event_id=>wwv_flow_imp.id(47438220130945391)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90891210909438608)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P211_ABRIR_REGION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47440197201945392)
,p_name=>'DA_ELIMINAR_REGISTRO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P211_AUX_ID_ELIMINAR'
,p_condition_element=>'P211_AUX_ID_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47440634971945392)
,p_event_id=>wwv_flow_imp.id(47440197201945392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro de forma permanente?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47441133723945392)
,p_event_id=>wwv_flow_imp.id(47440197201945392)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCOD_CATEGORIA VARCHAR2(60);',
'VFECHA_INICIO DATE; VFECHA_FIN DATE;',
'BEGIN',
'BEGIN',
'    SELECT C.COD_CATEGORIA,  C.fecha_inicio ,C.fecha_fin',
'      INTO VCOD_CATEGORIA,VFECHA_INICIO,VFECHA_FIN',
'          ',
'      FROM VT_CATEGORIAS_venta_cruzada C',
'     WHERE C.ROWID= :P211_AUX_ID_ELIMINAR',
'     AND C.COD_EMPRESA = :P_COD_EMPRESA  ',
'     ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''No existe el c\00F3digo ''||:P211_ABRIR_REGION);'),
'END;',
'',
'',
'',
'',
'BEGIN',
'    VTCATVENCRU.DELETE_REGISTRO (PI_COD_CATEGORIA => :P211_AUX_ID_ELIMINAR,',
'    PI_FECHA_INI => VFECHA_INICIO,',
'    PI_FECHA_FIN => VFECHA_FIN,',
'						      PI_COD_EMPRESA => :P_COD_EMPRESA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ELIMINAR_REGISTRO - ''||SQLERRM);',
'END;',
'END;'))
,p_attribute_02=>'P211_VBLE_COD_EMPRESA,P211_AUX_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47441680439945392)
,p_event_id=>wwv_flow_imp.id(47440197201945392)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90888464389438580)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47442046500945393)
,p_name=>'DA_CAMBIA_ESTADO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P211_CAMBIA_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47442506854945393)
,p_event_id=>wwv_flow_imp.id(47442046500945393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	UPDATE VT_ORIGENES',
'	   SET ACTIVO = :P211_ACTIVO_AUX',
'	 WHERE COD_EMPRESA = :P211_VBLE_COD_EMPRESA',
'	   AND ROWID = :P211_CAMBIA_ESTADO; ',
'EXCEPTION',
'	WHEN OTHERS THEN',
'		RAISE_APPLICATION_ERROR(-20000, ''DA_CAMBIA_ESTADO - ''||SQLERRM);',
'END; '))
,p_attribute_02=>'P211_CAMBIA_ESTADO,P211_VBLE_COD_EMPRESA,P211_ACTIVO_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47442981934945393)
,p_name=>'DA_ACTIVO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P211_ACTIVO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47443413268945393)
,p_event_id=>wwv_flow_imp.id(47442981934945393)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P211_ACTIVO_AUX,P211_AUX_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47444799745945394)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47433067122945386)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47448298027945395)
,p_event_id=>wwv_flow_imp.id(47444799745945394)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47446252993945394)
,p_event_id=>wwv_flow_imp.id(47444799745945394)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P211_ABRIR_REGION IS NULL THEN',
'BEGIN',
'    VTCATVENCRU.SAVE_REGISTRO(',
'               PI_COD_EMPRESA => :P_COD_EMPRESA,',
'						   PI_COD_CATEGORIA  => :P211_COD_CATEGORIA,',
'						   PI_FECHA_INI => :P211_FECHA_INICIO,',
'						   PI_FECHA_FIN 	  => :P211_FECHA_FIN,',
'               PI_ACTIVO =>:P211_ACTIVO);',
' ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR - SAVE_REGISTRO''||SQLERRM);',
'END;',
'END IF;'))
,p_attribute_02=>'P_COD_EMPRESA,P211_COD_CATEGORIA,P211_OBSERVACION,P211_ACTIVO,P211_FECHA_INICIO,P211_FECHA_FIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47446740291945394)
,p_event_id=>wwv_flow_imp.id(47444799745945394)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'BEGIN',
'    VTCATVENCRU.UPDATE_REGISTRO(PI_COD_EMPRESA => :P_COD_EMPRESA,',
'						     PI_COD_CATEGORIA  => :P211_COD_CATEGORIA,',
'						      PI_FECHA_INI => :P211_FECHA_INICIO,',
'						   PI_FECHA_FIN 	  => :P211_FECHA_FIN,',
'						     PI_ACTIVO 	    => :P211_ACTIVO);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR - UPDATE_REGISTRO''||SQLERRM);',
'END;',
' '))
,p_attribute_02=>'P_COD_EMPRESA,P211_COD_CATEGORIA,P211_OBSERVACION,P211_ACTIVO,P211_FECHA_INICIO,P211_FECHA_FIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47447223965945394)
,p_event_id=>wwv_flow_imp.id(47444799745945394)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90888464389438580)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47447756107945394)
,p_event_id=>wwv_flow_imp.id(47444799745945394)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(90891210909438608)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47448637914945395)
,p_name=>'DA_READONLY'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P211_COD_CATEGORIA'
,p_condition_element=>'P211_ABRIR_REGION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47449179195945395)
,p_event_id=>wwv_flow_imp.id(47448637914945395)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P211_COD_CATEGORIA'').readOnly = true;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47443893437945393)
,p_name=>'DA_SOLO_NUMEROS'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P211_COD_CATEGORIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47444360741945393)
,p_event_id=>wwv_flow_imp.id(47443893437945393)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(Event)){',
'      Event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(47435004488945388)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--INICIALIZA GLOBALES',
':P211_VBLE_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P211_VBLE_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P211_VBLE_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P211_VBLE_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P211_VBLE_NOM_SUCURSAL := :P_NOM_SUCURSAL;',
':P211_VBLE_COD_MODULO := NVL(:P_COD_MODULO, ''VT'');',
'',
':P211_VBLE_COD_MODULO := ''VT'';',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P211_VBLE_COD_MODULO,',
'                               PI_COD_FORMA  => :P211_VBLE_COD_FORMA,',
'                               PI_NOM_MODULO => :P211_VBLE_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P211_VBLE_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P211_VBLE_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P211_VBLE_NOM_FORMA);',
'',
':P211_ABRIR_REGION := NULL;',
':P211_AUX_ID_ELIMINAR := NULL;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
