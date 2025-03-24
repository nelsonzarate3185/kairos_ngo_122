prompt --application/pages/page_00513
begin
--   Manifest
--     PAGE: 00513
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
 p_id=>513
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Bloques - Articulos STBLOART'
,p_alias=>'BLOQUES-ARTICULOS-STBLOART'
,p_step_title=>'Bloques - Articulos STBLOART'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241220144758'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153731607477227635)
,p_plug_name=>'Bloques - Articulos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153731711306227636)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(153731607477227635)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT (select st.cod_bloque ||'' - '' ||st.desc_bloque ',
'        from st_bloques st',
'        where st.cod_empresa  = p.cod_empresa',
'        and st.cod_sucursal = p.cod_sucursal',
'        and st.cod_bloque = p.cod_bloque) COD_BLOQUE,	',
'       COD_EMPRESA,	',
'       COD_SUCURSAL,	',
'       (select a.cod_articulo ||'' - '' ||a.descripcion ',
'        from st_articulos a',
'        where a.cod_empresa  = p.cod_empresa',
'        and a.cod_articulo = p.cod_articulo) COD_ARTICULO,	',
'       (select s.cod_sub_bloque|| '' - '' ||s.desc_SUB_bloque ',
'        from st_sub_bloques s',
'        where s.cod_empresa  = p.cod_empresa',
'        and s.cod_sucursal = p.cod_sucursal',
'        and s.cod_bloque   = p.cod_bloque',
'        and s.cod_sub_bloque = p.cod_sub_bloque) COD_SUB_BLOQUE,	',
'       COD_ART_CORTO,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL INFO,',
'       NULL ELIMINAR',
'FROM ST_BLOQUE_PRODUCTOS P',
'WHERE COD_EMPRESA = :P_COD_EMPRESA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(153731995130227638)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>153731995130227638
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153732169127227640)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153732228206227641)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153732370762227642)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153732513468227644)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3digo Corto')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153732620541227645)
,p_db_column_name=>'ROWID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153732753144227646)
,p_db_column_name=>'EDITAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P513_EDITAR'', ''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153732811299227647)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P513_ELIMINAR'', ''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154376031795231511)
,p_db_column_name=>'COD_BLOQUE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154376139093231512)
,p_db_column_name=>'COD_SUB_BLOQUE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Sub Bloque'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154376229699231513)
,p_db_column_name=>'INFO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P513_INFO'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-eye"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154369419674282394)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1543695'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_SUCURSAL:COD_BLOQUE:COD_SUB_BLOQUE:COD_ART_CORTO:COD_ARTICULO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154375858536231509)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(153731607477227635)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154375420098231505)
,p_plug_name=>'Editar/Agregar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154376972860231520)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(154375420098231505)
,p_button_name=>'BT_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154377293252231523)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(154375420098231505)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154377515951231526)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(153731711306227636)
,p_button_name=>'BT_NUEVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-file-new'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153730967846227628)
,p_name=>'P513_COD_USUARIO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153731089028227629)
,p_name=>'P513_COD_EMPRESA'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153731197898227630)
,p_name=>'P513_NOM_EMPRESA'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153731236533227631)
,p_name=>'P513_COD_SUCURSAL'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153731311424227632)
,p_name=>'P513_NOM_SUCURSAL'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153731414798227633)
,p_name=>'P513_COD_MODULO'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153731513556227634)
,p_name=>'P513_DERECHOS'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153731859577227637)
,p_name=>'P513_DESC_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154375858536231509)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153733036256227649)
,p_name=>'P513_EDITAR'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153733112167227650)
,p_name=>'P513_ELIMINAR'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154375558852231506)
,p_name=>'P513_INFO'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154376331073231514)
,p_name=>'P513_AUX_COD_SUCURSAL'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154376584798231516)
,p_name=>'P513_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154375420098231505)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal|| '' - '' ||descripcion D, ',
'       cod_sucursal R',
'from sucursales',
'where cod_empresa = :p_cod_empresa',
'order by 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(154376640972231517)
,p_name=>'P513_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154375420098231505)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.cod_articulo ||'' - '' ||a.descripcion D, ',
'       a.cod_articulo R',
'from st_articulos a, ST_BLOQUE_PRODUCTOS p',
'where a.cod_empresa  = :p_cod_empresa',
'and a.cod_articulo = p.cod_articulo',
'order by 1 ',
''))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(154376718730231518)
,p_name=>'P513_BLOQUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154375420098231505)
,p_prompt=>'Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct st.cod_bloque ||'' - '' ||st.desc_bloque D, ',
'                st.cod_bloque R',
'from st_bloques st, ST_BLOQUE_PRODUCTOS p',
'where st.cod_empresa  = :P_cod_empresa',
'and st.cod_sucursal = :P513_SUCURSAL',
'and st.cod_bloque = p.cod_bloque'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P513_SUCURSAL'
,p_ajax_items_to_submit=>'P513_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(154376823049231519)
,p_name=>'P513_SUB_BLOQUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(154375420098231505)
,p_prompt=>'Sub Bloque'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  distinct st.cod_sub_bloque|| '' - '' ||st.desc_SUB_bloque D, ',
'       st.COD_SUB_BLOQUE R',
'from st_sub_bloques st,  ST_BLOQUE_PRODUCTOS p',
'where st.cod_empresa  = :p_cod_empresa',
'and st.cod_sucursal = :P513_SUCURSAL',
'and st.cod_bloque   = :P513_BLOQUE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P513_SUCURSAL,P513_BLOQUE'
,p_ajax_items_to_submit=>'P513_SUCURSAL,P513_BLOQUE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(154378188593231532)
,p_name=>'P513_ART_CORTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154375420098231505)
,p_prompt=>unistr('Art\00EDculo Corto')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154378234062231533)
,p_name=>'P513_ERR'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154375043498231501)
,p_name=>'DA_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P513_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154375108945231502)
,p_event_id=>wwv_flow_imp.id(154375043498231501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154375420098231505)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154377916933231530)
,p_event_id=>wwv_flow_imp.id(154375043498231501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT COD_SUCURSAL,',
'           COD_ARTICULO,',
'           COD_BLOQUE,',
'           COD_SUB_BLOQUE',
'    INTO :P513_SUCURSAL,',
'         :P513_ARTICULO,',
'         :P513_BLOQUE,',
'         :P513_SUB_BLOQUE',
'    FROM ST_BLOQUE_PRODUCTOS',
'    WHERE ROWID = :P513_EDITAR;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN ',
'            NULL;            ',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error al editar '' ||SQLERRM);',
'END;'))
,p_attribute_02=>'P513_EDITAR'
,p_attribute_03=>'P513_SUCURSAL,P513_ARTICULO,P513_BLOQUE,P513_SUB_BLOQUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154375297651231503)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P513_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154375344405231504)
,p_event_id=>wwv_flow_imp.id(154375297651231503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el siquiente bloque?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154378676725231537)
,p_event_id=>wwv_flow_imp.id(154375297651231503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    DELETE ST_BLOQUE_PRODUCTOS',
'    WHERE ROWID = :P513_ELIMINAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error al eliminar ''||SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P513_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154378745798231538)
,p_event_id=>wwv_flow_imp.id(154375297651231503)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153731711306227636)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154375677645231507)
,p_name=>'DA_INFO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P513_INFO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154376424274231515)
,p_event_id=>wwv_flow_imp.id(154375677645231507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_SUCURSAL',
'    INTO :P513_AUX_COD_SUCURSAL',
'    FROM ST_BLOQUE_PRODUCTOS',
'    WHERE ROWID = :P513_INFO;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            apex_debug.error(''Error asignando sucursal ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P513_INFO'
,p_attribute_03=>'P513_AUX_COD_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154375765704231508)
,p_event_id=>wwv_flow_imp.id(154375677645231507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P513_AUX_COD_SUCURSAL IS NOT NULL THEN',
'            SELECT s.cod_sucursal|| ''- '' ||s.descripcion',
'            INTO :P513_DESC_SUCURSAL',
'            FROM sucursales s, ST_BLOQUE_PRODUCTOS p',
'            WHERE s.cod_sucursal = :P513_AUX_COD_SUCURSAL',
'            AND s.cod_empresa = p.cod_empresa',
'            AND p.ROWID = :P513_INFO;',
'    END IF ;',
'    ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
unistr('            :P513_DESC_SUCURSAL := ''Sin descripci\00F3n.'';'),
'        WHEN OTHERS THEN',
unistr('            apex_debug.error(''Error al cargar descripci\00F3n ''||sqlerrm);'),
'END;'))
,p_attribute_02=>'P513_INFO,P513_AUX_COD_SUCURSAL'
,p_attribute_03=>'P513_DESC_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154377013444231521)
,p_name=>'DA_CERRAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154376972860231520)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154377190203231522)
,p_event_id=>wwv_flow_imp.id(154377013444231521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154375420098231505)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154377344931231524)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154377293252231523)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154378029803231531)
,p_event_id=>wwv_flow_imp.id(154377344931231524)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P513_ERR := NULL;',
'    IF :P513_EDITAR IS NULL THEN',
'    ',
'        INSERT INTO ST_BLOQUE_PRODUCTOS(',
'                    COD_EMPRESA,',
'                    COD_SUCURSAL,',
'                    COD_ARTICULO,',
'                    COD_BLOQUE,',
'                    COD_SUB_BLOQUE,',
'                    COD_ART_CORTO',
'        )VALUES (',
'                :P_COD_EMPRESA,',
'                :P513_SUCURSAL,',
'                :P513_ARTICULO,',
'                :P513_BLOQUE,',
'                :P513_SUB_BLOQUE,',
'                :P513_ART_CORTO);',
'    ELSE ',
'        UPDATE ST_BLOQUE_PRODUCTOS',
'        SET COD_SUCURSAL = :P513_SUCURSAL,',
'            COD_ARTICULO = :P513_ARTICULO,',
'            COD_BLOQUE = :P513_BLOQUE,',
'            COD_SUB_BLOQUE = :P513_SUB_BLOQUE,',
'            COD_ART_CORTO =:P513_ART_CORTO',
'        WHERE ROWID = :P513_EDITAR;',
'',
'    END IF;',
'    CASE',
'        WHEN :P513_SUCURSAL IS NULL THEN',
'             :P513_ERR := ''Seleccione una sucursal.'';',
'        WHEN :P513_ARTICULO IS NULL THEN',
unistr('             :P513_ERR := ''Seleccione un art\00EDculo.'';'),
'        WHEN :P513_BLOQUE IS NULL THEN',
'             :P513_ERR := ''Seleccione un bloque.'';',
'        ELSE NULL;',
'    END CASE;',
'    ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            :P513_ERR := ''No se han encontrado datos.'';',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error al guardar ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P513_EDITAR,P513_SUCURSAL,P513_ARTICULO,P513_ART_CORTO,P513_BLOQUE,P513_SUB_BLOQUE'
,p_attribute_03=>'P513_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154378570540231536)
,p_event_id=>wwv_flow_imp.id(154377344931231524)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153731711306227636)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P513_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154377464458231525)
,p_event_id=>wwv_flow_imp.id(154377344931231524)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154375420098231505)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P513_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154377698900231527)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(154377515951231526)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154377845363231529)
,p_event_id=>wwv_flow_imp.id(154377698900231527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P513_SUCURSAL,P513_ARTICULO,P513_BLOQUE,P513_SUB_BLOQUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154377737284231528)
,p_event_id=>wwv_flow_imp.id(154377698900231527)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154375420098231505)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154378313022231534)
,p_name=>'DA_ERR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P513_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154378482749231535)
,p_event_id=>wwv_flow_imp.id(154378313022231534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P513_ERR.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-square-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P513_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(154378810745231539)
,p_name=>'DA_ART'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P513_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(154378903725231540)
,p_event_id=>wwv_flow_imp.id(154378810745231539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    select distinct s.COD_ART_CORTO',
'    into :P513_ART_CORTO',
'    from st_articulos s, ST_BLOQUE_PRODUCTOS p',
'    where s.cod_empresa  = :p_cod_empresa',
'    and s.cod_empresa = p.COD_EMPRESA',
'    and s.cod_articulo = :P513_ARTICULO',
'    and s.cod_articulo = p.cod_articulo',
'    and s.cod_art_corto = p.cod_art_corto;',
'',
'  EXCEPTION',
'    when no_data_found then',
'         :P513_ART_CORTO := NULL;',
'        ',
'    when others then',
'      :P513_ART_CORTO := NULL;',
'      apex_debug.error(''Error en la tabla de Articulos ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P513_ARTICULO'
,p_attribute_03=>'P513_ART_CORTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(153730823000227627)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   :P513_Cod_Usuario  := :P_Cod_Usuario;',
'   :P513_Cod_Empresa  := :P_Cod_Empresa;',
'   :P513_Nom_Empresa  := :P_Nom_Empresa;',
'   :P513_Cod_Sucursal := :P_Cod_Sucursal;',
'   :P513_Nom_Sucursal := :P_Nom_Sucursal;',
'   :P513_Cod_Modulo   := :P_Cod_Modulo;',
'   ',
'   /*:P513_Derechos    := DERECHO_FORMA(                                      ',
'                                      :P513_Cod_Usuario,',
'                                      :P_Cod_Forma); */'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
