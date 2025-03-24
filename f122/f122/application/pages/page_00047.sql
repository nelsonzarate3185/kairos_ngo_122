prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVHORUPE - Hoja de Ruta'
,p_alias=>'HOJA-DE-RUTA'
,p_step_title=>'Hoja de Ruta'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20250306112828'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128026447143888505)
,p_plug_name=>'Ruta Sugerida'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(175476398871603874)
,p_plug_name=>'Reporte Hoja de Ruta'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_VENDEDOR,',
'VENDEDOR,',
'DIA,',
'COD_CLIENTE,',
'NOM_CLIENTE,',
'CIUDAD,',
'ASUNTO,',
'COMENTARIO,',
'VTA,',
'FECHA,',
'',
'',
'(select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=:P_COD_EMPRESA --//1',
'and hr.cod_cliente=h.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P47_FECHA_INICIO AND nvl(h.FECHA,:P47_FECHA_FIN)',
'and hr.cod_vendedor=h.COD_VENDEDOR)',
'',
'',
'||''/''||',
'  (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= :P_COD_EMPRESA --//1',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= h.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio)efectividad,sucursal_distribuidor,',
'     null borrar,rowid_hr',
'',
' from v_hoja_ruta_apex h',
' where h.cod_empresa=:P_COD_EMPRESA',
' and ( COD_VENDEDOR = :P47_COD_VENDEDOR OR :P47_COD_VENDEDOR IS NUlL )',
' and fecha between :P47_FECHA_INICIO AND :P47_FECHA_FIN',
'order by fecha, nom_cliente'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P47_COD_VENDEDOR,P47_FECHA_INICIO,P47_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Hoja de Ruta'
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
 p_id=>wwv_flow_imp.id(219005112426111001)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>219005112426111001
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219005204254111002)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219005328087111003)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219005483978111004)
,p_db_column_name=>'DIA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Dia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219005549257111005)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219005635216111006)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219005724667111007)
,p_db_column_name=>'CIUDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219005883567111008)
,p_db_column_name=>'ASUNTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Asunto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219005910810111009)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219006021142111010)
,p_db_column_name=>'VTA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Vta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219006194865111011)
,p_db_column_name=>'FECHA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219006222806111012)
,p_db_column_name=>'EFECTIVIDAD'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Efectividad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219006356423111013)
,p_db_column_name=>'SUCURSAL_DISTRIBUIDOR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Sucursal Distribuidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219006486226111014)
,p_db_column_name=>'BORRAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P47_DELETE_DATA_DET'',''#ROWID_HR#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(219006595951111015)
,p_db_column_name=>'ROWID_HR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Rowid Hr'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(219019610913111415)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2190197'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_VENDEDOR:VENDEDOR:DIA:COD_CLIENTE:NOM_CLIENTE:CIUDAD:ASUNTO:COMENTARIO:VTA:FECHA:EFECTIVIDAD:SUCURSAL_DISTRIBUIDOR:BORRAR:ROWID_HR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(175490104859605681)
,p_plug_name=>'Hoja de Ruta'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12341138065118004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_button_name=>'refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128027266610888513)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(128026447143888505)
,p_button_name=>'procesar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Ruta Automatica'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check-circle'
,p_grid_new_row=>'Y'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(219007178616111021)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_button_name=>'Refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12341514933118004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_button_name=>'Visita'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agendar Visita'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RP,48::'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-clipboard-edit'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12341980894118004)
,p_name=>'P47_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_item_default=>'P_COD_VENDEDOR'
,p_item_default_type=>'ITEM'
,p_prompt=>'Cod Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.NOMBRE ||''-''||F.COD_VENDEDOR||''-'' NOMBRE, F.COD_VENDEDOR',
'from fv_vendedores f, personas p',
'where f.cod_empresa=:p_cod_empresa',
'and nvl(f.ESTADO,''S'') NOT IN (''N'',''I'')',
'AND F.COD_PERSONA=P.COD_PERSONA',
'ORDER BY P.NOMBRE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12342332346118005)
,p_name=>'P47_FECHA_INICIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12342728926118005)
,p_name=>'P47_FECHA_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(175490104859605681)
,p_item_default=>'LAST_DAY(SYSDATE)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76098961812162815)
,p_name=>'P47_CANTIDAD_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128026447143888505)
,p_item_default=>'6'
,p_prompt=>'Cantidad Max. de Visitas Diarias'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128026588848888506)
,p_name=>'P47_TIPO_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128026447143888505)
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, descripcion c',
'from cc_tipo_cliente',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_11=>'-'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128026695423888507)
,p_name=>'P47_ESTADO_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128026447143888505)
,p_prompt=>'Estado del Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ACTIVO'' d, ''ACTIVO'' C FROM DUAL UNION ALL',
'select ''BLOQUEADO'' d, ''BLOQUEADO'' C FROM DUAL UNION ALL',
'select ''CREDITO BLOQUEADO'' d, ''CREDITO BLOQUEADO'' C FROM DUAL',
'union all',
'select ''INACTIVO'' d, ''INACTIVO'' C FROM DUAL',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_11=>'-'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128026846136888509)
,p_name=>'P47_DEPARTAMENTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128026447143888505)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.DESCRIPCION D, P.DESCRIPCION C',
'FROM PROVINCIAS P',
'WHERE COD_PAIS =''PAR'''))
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
 p_id=>wwv_flow_imp.id(128026978444888510)
,p_name=>'P47_CIUDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128026447143888505)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.DESCRIPCION D , C.DESCRIPCION C',
'FROM CIUDADES C, PROVINCIAS P',
'WHERE C.COD_PAIS = ''PAR''',
'AND P.DESCRIPCION = :P47_DEPARTAMENTO',
'AND P.COD_PAIS=C.COD_PAIS',
'AND P.COD_PROVINCIA=C.COD_PROVINCIA'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P47_DEPARTAMENTO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_11=>'-'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128027058983888511)
,p_name=>'P47_FECHA_INICIO_VISITA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128026447143888505)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128027115736888512)
,p_name=>'P47_FECHA_FIN_VISITA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(128026447143888505)
,p_item_default=>' (SYSDATE)+5'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(217191679579088145)
,p_name=>'P47_DELETE_DATA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(175476398871603874)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12343102544118005)
,p_name=>'refrescar_reporte'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12341138065118004)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12343695362118006)
,p_event_id=>wwv_flow_imp.id(12343102544118005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(175476398871603874)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(217191781304088146)
,p_name=>'da_eliminar'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_DELETE_DATA_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217191896834088147)
,p_event_id=>wwv_flow_imp.id(217191781304088146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P47_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217192191385088150)
,p_event_id=>wwv_flow_imp.id(217191781304088146)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de Borrar la Ruta?'
,p_attribute_02=>'Eliminar'
,p_attribute_04=>'fa-alert'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(217191966524088148)
,p_event_id=>wwv_flow_imp.id(217191781304088146)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VESTADO VARCHAR2(100);',
'vmensaje VARCHAR2(100);',
'BEGIN',
' BEGIN',
' SELECT CASE WHEN   fecha>=trunc(sysdate) ',
' THEN ''S'' ELSE ''N'' END INTO VESTADO FROM FV_HOJA_RUTA_VENDEDOR  WHERE ROWID=:P47_DELETE_DATA_DET',
';',
'EXCEPTION WHEN OTHERS THEN',
' raise_application_error(-20201, ''No existe la carga de ruta!'');',
' END;',
' if vestado=''S'' THEN ',
'       DELETE FV_HOJA_RUTA_VENDEDOR WHERE ROWID=:P47_DELETE_DATA_DET;',
'       else ',
'       vmensaje:=''No es posible eliminar rutas con fecha anterior'';',
'       raise_application_error(-20201, ''No es posible eliminar rutas con fecha anterior!'');',
'END IF;',
'              ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    raise_application_error(-20201, vmensaje);',
'END;'))
,p_attribute_02=>'P47_DELETE_DATA_DET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219006746441111017)
,p_event_id=>wwv_flow_imp.id(217191781304088146)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro Eliminado de Manera Exitosa'
,p_attribute_02=>'Exitoso'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219006661628111016)
,p_event_id=>wwv_flow_imp.id(217191781304088146)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(175476398871603874)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219006937727111019)
,p_name=>'New'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219007033237111020)
,p_event_id=>wwv_flow_imp.id(219006937727111019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(175476398871603874)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219007220957111022)
,p_name=>'da_refrescar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(219007178616111021)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219007377858111023)
,p_event_id=>wwv_flow_imp.id(219007220957111022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(175476398871603874)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128027576468888516)
,p_name=>'da_hoja_ruta_inteligente'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128027266610888513)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128028165022888522)
,p_event_id=>wwv_flow_imp.id(128027576468888516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P47_COD_VENDEDOR is null then',
'     raise_application_error(-20001,''Es Obligatorio el codigo de vendedor ''   ) ;',
'    end if;',
'   ',
'',
'if :P47_FECHA_INICIO_VISITA is null then',
'',
'       raise_application_error(-20001,''Es Obligatorio la fecha de inicio ''   ) ;',
'    end if;',
'',
'    if :P47_FECHA_FIN_VISITA is null then',
'      raise_application_error(-20001,''Es Obligatorio la fecha de fin''   ) ;',
'    end if;',
'',
'if :P47_TIPO_CLIENTE is null then',
'',
'     raise_application_error(-20001,''Es Obligatorio el tipo de cliente''   ) ;',
'    end if;',
'',
'if :P47_ESTADO_CLIENTE is null then',
'   raise_application_error(-20001,''Es Obligatorio el estado del cliente''   ) ;',
'    end if;',
''))
,p_attribute_02=>'P47_COD_VENDEDOR,P47_TIPO_CLIENTE,P47_ESTADO_CLIENTE,P47_FECHA_INICIO_VISITA,P47_FECHA_FIN_VISITA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128027631181888517)
,p_event_id=>wwv_flow_imp.id(128027576468888516)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de generar automaticamente la ruta?'
,p_attribute_02=>'Ruta Automatica'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128027744156888518)
,p_event_id=>wwv_flow_imp.id(128027576468888516)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128027899981888519)
,p_event_id=>wwv_flow_imp.id(128027576468888516)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'begin',
'  -- Call the procedure',
' ',
'',
' inv.sp_genera_visitas_aut(p_cod_empresa => :p_cod_empresa,',
'                            p_cod_vendedor => :P47_COD_VENDEDOR,',
'                            p_estado => :P47_ESTADO_CLIENTE,',
'                            p_tipo_cliente => :P47_TIPO_CLIENTE,',
'                            P_DEPARTAMENTO => :P47_DEPARTAMENTO,',
'                            P_CIUDAD => :P47_CIUDAD,',
'                            p_fecha => :p_fecha,',
'                            P_FECHA_FIN => :P_FECHA_FIN,',
'                            p_cantidad_clientes => :P47_CANTIDAD_CLIENTE,',
'                            p_objetivo_cliente => null);                            ',
'end;',
'',
'end;'))
,p_attribute_02=>'P47_COD_VENDEDOR,P47_TIPO_CLIENTE,P47_ESTADO_CLIENTE,P47_FECHA_INICIO_VISITA,P47_FECHA_FIN_VISITA,P47_DEPARTAMENTO,P47_CIUDAD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128027950379888520)
,p_event_id=>wwv_flow_imp.id(128027576468888516)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128028037651888521)
,p_event_id=>wwv_flow_imp.id(128027576468888516)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(175476398871603874)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(128026745775888508)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pr_init'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  :p47_estado_cliente:=''ACTIVO- BLOQUEADO- CREDITO BLOQUEADO'';',
'  :P47_TIPO_CLIENTE:=''MAYORISTA A- MAYORISTA B'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
