prompt --application/pages/page_00735
begin
--   Manifest
--     PAGE: 00735
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
 p_id=>735
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'SEGUIMIENTO CONTROL CALIDAD'
,p_alias=>'SEGUIMIENTO-CONTROL-CALIDAD'
,p_step_title=>'SEGUIMIENTO CONTROL CALIDAD'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'} ',
'.t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
' ',
' ',
'',
'  .tabla_color   td.t-Report-cell   {',
'  color: yellow  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: yellow  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #003a85  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85  !important;',
'	  color: yellow !important;    }',
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
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240617131455'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(277125495474416439)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(277125527426416440)
,p_plug_name=>'GRILLA'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  id_registro,',
'        FECHA,',
'        estado, ',
'        descripcion,',
'        fecha_cierre,',
'        destino,',
'        nro_ref,',
'        nro_solicitud,',
'        fecha_alta,',
'        fecha_autoriza,',
'        fecha_confirma,',
'        nro_ajuste',
'FROM(',
'select q.id_registro,',
'       q.fecha_alta FECHA,',
'       q.estado, ',
'       a.descripcion,',
'       q.fecha_cierre,',
'       q.destino,',
'       null nro_ref,',
'       null nro_solicitud,',
'       null fecha_alta,',
'       null fecha_autoriza,',
'       null fecha_confirma,',
'       null nro_ajuste,',
'       A.COD_ARTICULO',
'from ca_control_calidad q,',
'     st_articulos a',
'where q.cod_empresa=a.cod_empresa',
'and   q.cod_articulo=a.cod_articulo ',
'and   q.destino is null',
'union all',
'select q.id_registro,',
'       q.fecha_alta FECHA,',
'       q.estado, ',
'       a.descripcion,',
'       q.fecha_cierre,',
'       q.destino     ,',
'       Q.NRO_REF ,',
'       nvl(e.nro_envio,'''')nro_solicitud,',
'       nvl(e.fec_alta,'''')fecha_alta,',
'       nvl(e.fecha,'''')fecha_autoriza,',
'       nvl(e.fecha,'''')fecha_confirma,',
'       nvl(e.nro_envio,'''')nro_ajuste,',
'       A.COD_ARTICULO',
'from ca_control_calidad q,',
'     st_articulos a,',
'     st_notas_envio_cab_pend n,',
'     st_notas_envio_CAB e',
'where q.cod_empresa=a.cod_empresa',
'and   q.cod_articulo=a.cod_articulo',
'and   q.destino = ''OFERTA''',
'and   q.nro_ref=n.nro_envio',
'and   q.cod_empresa=n.cod_empresa',
'and   q.ser_ref = n.ser_envio',
'and   n.tip_envio=''ENV''',
'and   n.cod_empresa = e.cod_empresa(+)',
'and   n.nro_envio = e.REFERENCIA(+)',
' ',
'union all     ',
'select q.id_registro,',
'       q.fecha_alta FECHA,',
'       q.estado, ',
'       a.descripcion,',
'       q.fecha_cierre,',
'       q.destino  ,',
'       q.nro_ref,',
'       nvl(p.nro_comprobante,'''')nro_solicitud,',
'       nvl(p.fec_comprobante,'''')fecha_alta,',
'       nvl(p.fecha_autoriza,'''')fecha_autoriza,',
'       nvl(p.fecha_finaliza,'''')fecha_confirma,',
'       nvl(p.num_ent_sal,'''')nro_ajuste,',
'       A.COD_ARTICULO',
'from ca_control_calidad q,',
'     st_articulos a,',
'     st_ficha_tecnica f,',
'     st_pedido_carneo p',
'where q.cod_empresa=a.cod_empresa',
'and   q.cod_articulo=a.cod_articulo',
'and   q.destino = ''DESPIECE''',
'and   q.cod_empresa=f.cod_empresa',
'and   q.nro_ref=f.nro_ficha',
'and   q.cod_articulo=f.cod_articulo',
'and   f.cod_empresa=p.cod_empresa(+)',
'and   f.nro_ficha=p.nro_ficha(+)',
')',
'WHERE (:P735_ESTADO IS NULL OR :P735_ESTADO=estado)',
'AND   (:P735_DESTINO IS NULL OR :P735_DESTINO=DESTINO)',
'AND   (:P735_ARTICULO IS NULL OR :P735_ARTICULO=COD_ARTICULO)',
'AND   (:P735_FEC_CIERRE_INI IS NULL OR :P735_FEC_CIERRE_INI>=fecha_cierre)',
'AND   (:P735_FEC_CIERRE_FIN IS NULL OR :P735_FEC_CIERRE_FIN<=fecha_cierre)',
'',
'ORDER BY id_registro,fecha_cierre DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P735_ESTADO,P735_DESTINO,P735_ARTICULO,P735_FEC_CIERRE_INI,P735_FEC_CIERRE_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'GRILLA'
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
 p_id=>wwv_flow_imp.id(277125627505416441)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>277125627505416441
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(277125722800416442)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_link=>'f?p=&APP_ID.:722:&SESSION.::&DEBUG.::P722_ID_REGISTRO:#ID_REGISTRO#'
,p_column_linktext=>'#ID_REGISTRO#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(277125824794416443)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(277125908359416444)
,p_db_column_name=>'ESTADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(277126101999416446)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(277126282926416447)
,p_db_column_name=>'FECHA_CIERRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(277126353848416448)
,p_db_column_name=>'DESTINO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Destino'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(277126499603416449)
,p_db_column_name=>'NRO_REF'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('N\00BA Ref.')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(277126591844416450)
,p_db_column_name=>'NRO_SOLICITUD'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nro Recep.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284807401455469901)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284807517531469902)
,p_db_column_name=>'FECHA_AUTORIZA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Autoriza'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284807629181469903)
,p_db_column_name=>'FECHA_CONFIRMA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Confirma'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(284807759567469904)
,p_db_column_name=>'NRO_AJUSTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Ajuste'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(284817339383470344)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2848174'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_REGISTRO:FECHA:ESTADO:DESCRIPCION:FECHA_CIERRE:DESTINO:NRO_REF:NRO_SOLICITUD:FECHA_ALTA:FECHA_AUTORIZA:FECHA_CONFIRMA:NRO_AJUSTE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(314026051513409032)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(277125495474416439)
,p_button_name=>'FILTRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(314025479383409026)
,p_name=>'P735_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(277125495474416439)
,p_prompt=>'Estado:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  distinct estado d, estado v',
'from ca_control_calidad'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(314025582940409027)
,p_name=>'P735_ARTICULO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(277125495474416439)
,p_prompt=>'Articulo:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct COD_ARTICULO ||'' -'' ||DESCRIPCION AS ARTICULO,',
'    COD_ARTICULO AS CODIGO',
'from VW_CONTROL_CALIDAD ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
 p_id=>wwv_flow_imp.id(314025674438409028)
,p_name=>'P735_DESTINO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(277125495474416439)
,p_prompt=>'Destino:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:OFERTA;O,DESPIECE;D'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(314025828507409030)
,p_name=>'P735_FEC_CIERRE_INI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(277125495474416439)
,p_prompt=>'Fecha Cierre:'
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
 p_id=>wwv_flow_imp.id(314025979134409031)
,p_name=>'P735_FEC_CIERRE_FIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(277125495474416439)
,p_prompt=>'Fecha Cierre:'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314026171267409033)
,p_name=>'DA_FILTRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(314026051513409032)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314026296894409034)
,p_event_id=>wwv_flow_imp.id(314026171267409033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P735_ESTADO,P735_DESTINO,P735_FEC_CIERRE_INI,P735_FEC_CIERRE_FIN,P735_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314026360827409035)
,p_event_id=>wwv_flow_imp.id(314026171267409033)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(277125527426416440)
);
wwv_flow_imp.component_end;
end;
/
