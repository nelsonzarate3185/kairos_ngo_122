prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte de Prospecto de Clientes'
,p_alias=>'PROSPECTO-DE-CLIENTES'
,p_step_title=>'Prospecto de Clientes'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color:  hsl(147, 69%, 87%)  !important;',
'   border-color:  #c9fceb  !important;',
'}',
'',
'',
'#GRILLA   th.a-IRR-header {',
'  background-color:  rgb(218, 238, 239);',
' /* border-color: rgb(43, 79, 80);*/',
'}',
'/* ',
' #GRILLA  td {',
'  background-color: rgb(218, 239, 223); ',
'  border-color: rgb(43, 79, 80);',
'}',
'',
' ',
'*/',
'',
' ',
'.chip {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05);',
'}',
'',
'.chip-success {',
'    background: #cdffe0;',
'    color: #00592e;',
'}',
'',
'.chip-danger {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.chip-warning {',
'    background: #fffedc;',
'    color: #764400;',
'}',
'',
'.chip-primary {',
'    background: #e9f5ff;',
'    color: #004f95;',
'}',
'',
'.chip-purple {',
'    background: #eddbfa;',
'    color: #5200a5;',
'}',
'',
'.chip-pink {',
'    background: #ffeffa;',
'    color: #990067;',
'}',
'',
'.chip-orange {',
'    background: #fff2e4;',
'    color: #8d3600;',
'}',
'',
'.chip-teal {',
'    background: #e4fdff;',
'    color: #00526e;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240919111159'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237751967653464795)
,p_plug_name=>'Prospecto de Clientes'
,p_icon_css_classes=>'fa-globe'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40115692756263658)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  t varchar2(4000) := null;',
'begin',
'  /*begin',
'      t := EBA_CUST_FW.get_preference_value(''WELCOME_TEXT'');',
'  exception',
'      when others then ',
'      t := null;',
'  end;*/',
'  if t is null or t = ''&nbsp;'' or t = ''Preference does not exist'' then',
'     sys.htp.p(''<p>Seguimiento de Prospecto de Clientes</p>'');',
'  else',
'     sys.htp.p(''<p>''||apex_escape.html(t)||''</p>'');',
'  end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(252083480042638454)
,p_plug_name=>'Prospectos'
,p_region_name=>'GRILLA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       RUC,',
'       CI,',
'       NOMBRE_PROSPECTO,',
'       COD_VENDEDOR,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       FEC_ESTADO,',
'       COMENTARIO,',
'       DIRECCION,',
'       COD_CIUDAD,',
'       COD_DEPARTAMENTO,',
'       FECHA_SEGUIMIENTO,',
'       ESTADO,',
'       ID_PROSPECTO ,',
'       (Select descripcion',
'         ',
'          from provincias p',
'              where cod_pais=''PAR'' and p.cod_provincia=a.cod_departamento) departamento,',
'              (Select descripcion',
'         ',
'          from ciudades p',
'              where cod_pais=''PAR''',
'              and p.cod_provincia=a.cod_departamento',
'              and p.cod_ciudad=a.cod_ciudad)ciudad,',
'              (select  c.comentario ',
' from cc_SEGUIMIENTO_prospecto c',
'where c.cod_empresa     = :p_cod_empresa',
' and  c.id_prospecto     =a.id_prospecto',
' and fecha = (select max(c1.fecha) ',
' from cc_seguimiento_prospecto c1',
'  where c1.cod_empresa=c.cod_empresa',
' and c1.id_prospecto=a.id_prospecto',
' ))ultimo_comentario, telefono, email, codigo_cliente,CONTACTO, cod_marca, monto_estimado',
'  from CC_PROSPECTO_VENTA a',
'  where (a.cod_vendedor=:P50_VENDEDOR OR :P50_VENDEDOR IS NULL)',
'  AND (a.ESTADO=:P50_ESTADO OR :P50_ESTADO IS NULL)',
'  AND (a.FEC_ALTA>=:P50_FECHA_INI OR :P50_FECHA_INI IS NULL)',
'  AND (a.FEC_ALTA<=:P50_FECHA_FIN OR :P50_FECHA_FIN IS NULL)',
'  AND (a.FECHA_SEGUIMIENTO>=:P50_FECHA_INI_SEGUIMIENTO OR :P50_FECHA_INI_SEGUIMIENTO IS NULL)',
'  AND (a.FECHA_SEGUIMIENTO<=:P50_FECHA_FIN_SEGUIMIENTO OR :P50_FECHA_FIN_SEGUIMIENTO IS NULL)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P50_VENDEDOR,P50_ESTADO,P50_FECHA_INI,P50_FECHA_FIN,P50_FECHA_INI_SEGUIMIENTO,P50_FECHA_FIN_SEGUIMIENTO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Prospectos'
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
 p_id=>wwv_flow_imp.id(252083816704638454)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::P51_ID_PROSPECTO,P51_COD_EMPRESA:#ID_PROSPECTO#,#COD_EMPRESA#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'INV'
,p_internal_uid=>252083816704638454
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12416108208267143)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12416543111267143)
,p_db_column_name=>'RUC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12416986095267144)
,p_db_column_name=>'CI'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ci'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12417383164267144)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(12430220396267152)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12417772427267144)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12418137808267144)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12418563941267144)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12418931018267145)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12419322563267145)
,p_db_column_name=>'DIRECCION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12419701443267145)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12421760313267146)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>10
,p_column_identifier=>'P'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12420121245267145)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12422120547267146)
,p_db_column_name=>'CIUDAD'
,p_display_order=>11
,p_column_identifier=>'Q'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12420538611267145)
,p_db_column_name=>'FECHA_SEGUIMIENTO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Fecha Seguimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12420970361267145)
,p_db_column_name=>'ESTADO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12421379847267146)
,p_db_column_name=>'ID_PROSPECTO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Id Prospecto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12415703676267142)
,p_db_column_name=>'NOMBRE_PROSPECTO'
,p_display_order=>24
,p_column_identifier=>'O'
,p_column_label=>'Nombre Prospecto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12422581357267146)
,p_db_column_name=>'ULTIMO_COMENTARIO'
,p_display_order=>34
,p_column_identifier=>'R'
,p_column_label=>'Ultimo Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12422950484267146)
,p_db_column_name=>'TELEFONO'
,p_display_order=>44
,p_column_identifier=>'S'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12423333018267147)
,p_db_column_name=>'EMAIL'
,p_display_order=>54
,p_column_identifier=>'T'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12423790823267147)
,p_db_column_name=>'CODIGO_CLIENTE'
,p_display_order=>64
,p_column_identifier=>'U'
,p_column_label=>'Codigo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12424104053267147)
,p_db_column_name=>'CONTACTO'
,p_display_order=>74
,p_column_identifier=>'V'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12424511835267147)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>84
,p_column_identifier=>'W'
,p_column_label=>' Marca'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12429613383267151)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12424997795267147)
,p_db_column_name=>'MONTO_ESTIMADO'
,p_display_order=>94
,p_column_identifier=>'X'
,p_column_label=>'Monto Estimado'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(252180308163689074)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2285469'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO_CLIENTE:RUC:CI:NOMBRE_PROSPECTO:EMAIL:TELEFONO:COD_VENDEDOR:COD_USUARIO:FEC_ALTA:DIRECCION:ESTADO:DEPARTAMENTO:CIUDAD:FECHA_SEGUIMIENTO:COMENTARIO:ULTIMO_COMENTARIO::CONTACTO:COD_MARCA:MONTO_ESTIMADO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(252489456039950982)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12425946049267149)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(252489456039950982)
,p_button_name=>'Actualizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12415022334267141)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(237751967653464795)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Prospecto'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:51::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12426340486267149)
,p_name=>'P50_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(252489456039950982)
,p_item_default=>'P0_COD_VENDEDOR'
,p_item_default_type=>'ITEM'
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_VENDEDORES2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12426780344267150)
,p_name=>'P50_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(252489456039950982)
,p_item_default=>'PENDIENTE'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ''PENDIENTE'' C, ''PENDIENTE'' D',
'FROM DUAL',
'UNION ALL',
'SELECT  ''PLANIFICADO'' C, ''PLANIFICADO'' D',
'FROM DUAL',
'UNION ALL',
'SELECT  ''CONCLUIDO OK'' C, ''CONCLUIDO OK'' D',
'FROM DUAL',
'UNION ALL',
'SELECT  ''CONCLUIDO SIN VENTA'' C, ''CONCLUIDO SIN VENTA'' D',
'FROM DUAL',
'UNION ALL',
'SELECT  ''RETRASO'' C, ''RETRASO'' D',
'FROM DUAL',
'UNION ALL',
'SELECT  ''EN PROCESO'' C, ''EN PROCESO'' D',
'FROM DUAL',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12427151429267150)
,p_name=>'P50_FECHA_INI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(252489456039950982)
,p_prompt=>'Fecha Alta Inicio'
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
 p_id=>wwv_flow_imp.id(12427580302267150)
,p_name=>'P50_FECHA_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(252489456039950982)
,p_prompt=>'Fecha Alta Fin'
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
 p_id=>wwv_flow_imp.id(12427988082267150)
,p_name=>'P50_FECHA_INI_SEGUIMIENTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(252489456039950982)
,p_prompt=>'Fecha Seguimiento Inicial'
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
 p_id=>wwv_flow_imp.id(12428366266267150)
,p_name=>'P50_FECHA_FIN_SEGUIMIENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(252489456039950982)
,p_prompt=>'Fecha Seguimiento Final'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12428723054267151)
,p_name=>'da_Actualizar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12425946049267149)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12429248643267151)
,p_event_id=>wwv_flow_imp.id(12428723054267151)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(252083480042638454)
);
wwv_flow_imp.component_end;
end;
/
