prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reparto por Planillas'
,p_alias=>'RPPLANIL'
,p_step_title=>'Reparto por Planillas'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_empresa, p_nro_planilla, p_fec_planilla, p_cod_zona, p_cod_repartidor,p_nro_comprobante,p_serie){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPENTENC.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_NRO_PLANILLA='' + p_nro_planilla + ''&P_FEC_PLANILLA='' + p_fec_planilla + ''&P_COD_ZONA='' + p_cod_zona   ',
'            + ''&P_COD_REPARTIDOR='' + p_cod_repartidor +''&P_NRO_COMPROBANTE''+ p_nro_comprobante + ''&P_SERIE''+ p_serie +''&j_username=jasperadmin&j_password=jasperadmin'';',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank''); ',
'}    ',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #FFED00 !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'tr:last-child td[headers="TOTAL"] { ',
'    font-size: large; ',
'    background: #d9ed92; ',
'}',
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
'  th.t-Report-colHead,  th.t-Report-colHead a{',
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
'',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85 !important;',
'	  color: #FFED00 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
' ',
' .divcol{text-align: right;}',
'',
' #sinstock{ background-color: #ff5636;}',
' #stockperif{ background-color: #e9ff70; }',
' #stockcompleto{background-color: #b7e4c7;}',
' #anulado{background-color: lightgray;}',
'  ',
' ',
'',
'',
' #detalle_articulo .ui-dialog {',
'    width: 1200px;  /* Ajusta el ancho */',
'    height: 600px;  /* Ajusta la altura */',
'}',
'',
'#detalle_articulo .ui-dialog-content {',
'    max-height: 350px;  /* Ajusta la altura del contenido */',
'    overflow-y: auto;   /* Agrega un scroll si es necesario */',
'}',
'',
' '))
,p_step_template=>wwv_flow_imp.id(40090628970263651)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250311112453'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14598871456343840)
,p_plug_name=>'Reparto por Planillas'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10075758082914910)
,p_plug_name=>'BOTONES'
,p_parent_plug_id=>wwv_flow_imp.id(14598871456343840)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11644238162537433)
,p_plug_name=>'Reparto por Planillas'
,p_parent_plug_id=>wwv_flow_imp.id(14598871456343840)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13477366648268331)
,p_plug_name=>'Datos de Planilla'
,p_parent_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13478001256268338)
,p_plug_name=>unistr('Rendici\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13478186262268339)
,p_plug_name=>'Zona-Vehiculo-Choferes'
,p_parent_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13478326888268341)
,p_plug_name=>'Kilometrajes'
,p_parent_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11644496077537435)
,p_plug_name=>unistr('Confirmaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(14598871456343840)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14066387010863709)
,p_plug_name=>'Region de Variables'
,p_parent_plug_id=>wwv_flow_imp.id(14598871456343840)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14502248832277202)
,p_plug_name=>'Editar Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(14598871456343840)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14503698930277216)
,p_plug_name=>'Region Detalle Planilla'
,p_parent_plug_id=>wwv_flow_imp.id(14598871456343840)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11644371287537434)
,p_plug_name=>'Reporte Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(14503698930277216)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID,',
'       C001 COD_EMPRESA,',
'       C002 COD_SUCURSAL,',
'       C003 NRO_PLANILLA,',
'       C004 TIP_COMPROBANTE,',
'       C005 SER_COMPROBANTE,',
'       C006 NRO_COMPROBANTE,',
'       C007 ESTADO,',
'       C008 OBSERVACION,',
'       C009 FEC_CAMBIO_ESTADO,',
'       C010 COD_USUARIO_CAMBIO,',
'       C011 COD_MOTIVO_ANU,',
'       C012 HORA_ALTA,',
'       TO_NUMBER(C013) VOLUMEN,',
'       C014 FEC_MODIFICACION,',
'       C015 COD_USUARIO_MODIFICACION,',
'       C016 ORDEN_ENTREGA,',
'       C017 EMPRESA_ORIGEN,',
'       C018 IND_CASO_COMUNICADO,',
'       C019 COD_MOTIVO_DEV_REN,',
'       C020 OBSERVACION_REENVIO,',
'       C021 TIPO_ENTREGA,',
'       C022 NRO_RENVIO_QM,',
'       C023 OLD_ESTADO_REPARTO, ',
'       C024 NOMB_CLIENTE,',
'       C025 COD_CLIENTE, ',
'       C026 NOMB_MONEDA,',
'       C027 COD_MONEDA,',
'       to_number(C028) IMPORTE,',
'       NULL VER_OBS,',
'       NULL BORRAR',
'  from APEX_COLLECTIONS',
' where collection_name = ''COL_DET_RPPLANIL''',
'   and C040 IS NULL ;',
'   '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Detalle'
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
 p_id=>wwv_flow_imp.id(13585572145579342)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'javascript:$s(''P31_SEQ_ID'',#SEQ_ID#);'
,p_detail_link_text=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_owner=>'MILAGROFE'
,p_internal_uid=>13585572145579342
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13977215798793509)
,p_db_column_name=>'EMPRESA_ORIGEN'
,p_display_order=>10
,p_column_identifier=>'Q'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13977635876793513)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>20
,p_column_identifier=>'U'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13585946169579346)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13586061712579347)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Serie Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13978058986793517)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'X'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13586235963579349)
,p_db_column_name=>'ESTADO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(14542484931107810)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13977032263793507)
,p_db_column_name=>'COD_USUARIO_MODIFICACION'
,p_display_order=>70
,p_column_identifier=>'O'
,p_column_label=>'Cod Usuario Modificacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13585682479579343)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>80
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13585740721579344)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>90
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13976588530793502)
,p_db_column_name=>'COD_USUARIO_CAMBIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Usuario Cambio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13976621783793503)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13976730814793504)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13977359785793510)
,p_db_column_name=>'IND_CASO_COMUNICADO'
,p_display_order=>130
,p_column_identifier=>'R'
,p_column_label=>'Ind Caso Comunicado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13977441374793511)
,p_db_column_name=>'COD_MOTIVO_DEV_REN'
,p_display_order=>140
,p_column_identifier=>'S'
,p_column_label=>'Cod Motivo Dev Ren'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13586393188579350)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>160
,p_column_identifier=>'H'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13977964401793516)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>170
,p_column_identifier=>'W'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13978100710793518)
,p_db_column_name=>'FEC_CAMBIO_ESTADO'
,p_display_order=>190
,p_column_identifier=>'Y'
,p_column_label=>'Fec Cambio Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13978370594793520)
,p_db_column_name=>'FEC_MODIFICACION'
,p_display_order=>210
,p_column_identifier=>'AA'
,p_column_label=>'Fec Modificacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13978479051793521)
,p_db_column_name=>'ORDEN_ENTREGA'
,p_display_order=>220
,p_column_identifier=>'AB'
,p_column_label=>'Orden Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13978514742793522)
,p_db_column_name=>'NRO_RENVIO_QM'
,p_display_order=>230
,p_column_identifier=>'AC'
,p_column_label=>'Nro Renvio Qm'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13977597281793512)
,p_db_column_name=>'OBSERVACION_REENVIO'
,p_display_order=>240
,p_column_identifier=>'T'
,p_column_label=>'Observacion Reenvio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14067591139863721)
,p_db_column_name=>'OLD_ESTADO_REPARTO'
,p_display_order=>250
,p_column_identifier=>'AD'
,p_column_label=>'Old Estado Reparto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14067644067863722)
,p_db_column_name=>'NOMB_CLIENTE'
,p_display_order=>260
,p_column_identifier=>'AE'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14067778809863723)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>270
,p_column_identifier=>'AF'
,p_column_label=>'Codigo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14067856761863724)
,p_db_column_name=>'NOMB_MONEDA'
,p_display_order=>280
,p_column_identifier=>'AG'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14067987157863725)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>290
,p_column_identifier=>'AH'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14504412762277224)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>310
,p_column_identifier=>'AJ'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14505185316277231)
,p_db_column_name=>'VER_OBS'
,p_display_order=>320
,p_column_identifier=>'AK'
,p_column_label=>unistr('Observaci\00F3n')
,p_column_link=>'javascript:$s(''P31_CARGA_OBS'',#SEQ_ID#);'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/add-small.png" style="max-width:32px;" alt="" title="" />'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14505887837277238)
,p_db_column_name=>'IMPORTE'
,p_display_order=>330
,p_column_identifier=>'AL'
,p_column_label=>'Importe'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14505957373277239)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>340
,p_column_identifier=>'AM'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11484016920011915)
,p_db_column_name=>'BORRAR'
,p_display_order=>350
,p_column_identifier=>'AN'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P31_SEQ_ID_BORRAR'',#SEQ_ID#);'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13993340099829137)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'139934'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMPRESA_ORIGEN:TIPO_ENTREGA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:NOMB_CLIENTE:NOMB_MONEDA:VOLUMEN:IMPORTE:ESTADO:ORDEN_ENTREGA:VER_OBS:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14504880965277228)
,p_plug_name=>'Observacion'
,p_parent_plug_id=>wwv_flow_imp.id(14503698930277216)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14505578407277235)
,p_plug_name=>'Totales'
,p_parent_plug_id=>wwv_flow_imp.id(14503698930277216)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_column=>9
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14506542919277245)
,p_plug_name=>'Tiempos'
,p_parent_plug_id=>wwv_flow_imp.id(14598871456343840)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14506762399277247)
,p_plug_name=>'Tiempos Repartos'
,p_parent_plug_id=>wwv_flow_imp.id(14506542919277245)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  SEQ_ID,',
'        c001    COD_EMPRESA,',
'        c002    NRO_PLANILLA,',
'        c003    COD_SUCURSAL,',
'        c004    FEC_PLANILLA,',
'        c005    FECHA_INICIO,',
'        c006    FECHA_FIN,',
'        c007    COD_USUARIO,',
'        c008    COD_POSICION_CELDA,',
'        c009    FEC_ASIGNACION_CELDA,',
'        c010    CELDA,',
'         ''I''    inicio,     ',
'        CASE',
'            WHEN :P31_NRO_PLANILLA IS NOT NULL AND ((c005 IS not NULL and c006 IS NULL) or :P31_CAMBIA_INI_FIN = ''S'' ) THEN ''F''',
'        END fin  ',
'  FROM APEX_COLLECTIONS',
'  WHERE COLLECTION_NAME = ''COL_SUCURSAL'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P31_NRO_PLANILLA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Tiempos Repartos'
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
 p_id=>wwv_flow_imp.id(14506897167277248)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MILAGROFE'
,p_internal_uid=>14506897167277248
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14506921409277249)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7708167211151305)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7708273686151306)
,p_db_column_name=>'COD_POSICION_CELDA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Celda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7708481578151308)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7708514673151309)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Fec Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7708675425151310)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Inicio'
,p_column_type=>'STRING'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7708704123151311)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Fin'
,p_column_type=>'STRING'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7708877493151312)
,p_db_column_name=>'FEC_ASIGNACION_CELDA'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>unistr('Fec. Asignaci\00F3n Celda')
,p_column_type=>'STRING'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7709261868151316)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14599655175343848)
,p_db_column_name=>'INICIO'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P31_AUX_CAMBIA_FEC_INI'', ''#SEQ_ID#'');'
,p_column_linktext=>'I'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14599773092343849)
,p_db_column_name=>'FIN'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P31_AUX_CAMBIA_FEC_FIN'',''#SEQ_ID#'');'
,p_column_linktext=>'F'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15761389123998204)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15762270875998213)
,p_db_column_name=>'CELDA'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7715946703164932)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'77160'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUCURSAL:COD_POSICION_CELDA:CELDA:FEC_ASIGNACION_CELDA:FECHA_INICIO:FECHA_FIN:INICIO:FIN:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69278613274709716)
,p_plug_name=>'Tiempo Reparto'
,p_parent_plug_id=>wwv_flow_imp.id(14506542919277245)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'RP_REPARTO_TIEMPOS'
,p_query_where=>'nro_planilla = :P31_nro_planilla'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Tiempo Reparto'
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
 p_id=>wwv_flow_imp.id(69278822484709718)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P_COD_EMPRESA'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69278986295709719)
,p_name=>'NRO_PLANILLA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_PLANILLA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P31_NRO_PLANILLA'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69279096684709720)
,p_name=>'COD_SUCURSAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_SUCURSAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Sucursal'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>5
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||'' - ''||descripcion d, cod_sucursal r',
'from inv.sucursales',
'where cod_empresa = :P_COD_EMPRESA;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'Seleccione...'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69279141474709721)
,p_name=>'FEC_PLANILLA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_PLANILLA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69279269462709722)
,p_name=>'FECHA_INICIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_INICIO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Inicio'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD/MM/YYYY HH24:MI'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69279344575709723)
,p_name=>'FECHA_FIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_FIN'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fecha Fin'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD/MM/YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(69279470699709724)
,p_name=>'COD_USUARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_USUARIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69279502388709725)
,p_name=>'COD_POSICION_CELDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_POSICION_CELDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Celda'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(69279617219709726)
,p_name=>'FEC_ASIGNACION_CELDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEC_ASIGNACION_CELDA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Fec Asignacion Celda'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_format_mask=>'DD/MM/YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(69279721061709727)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69279872685709728)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69279930280709729)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_03=>'N'
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(69278790971709717)
,p_internal_uid=>69278790971709717
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
 p_id=>wwv_flow_imp.id(72351270609030080)
,p_interactive_grid_id=>wwv_flow_imp.id(69278790971709717)
,p_static_id=>'723513'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(72351443393030080)
,p_report_id=>wwv_flow_imp.id(72351270609030080)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72351951134030087)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(69278822484709718)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72352868308030093)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(69278986295709719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72353761498030097)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(69279096684709720)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.812
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72354661657030099)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(69279141474709721)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72355589862030101)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(69279269462709722)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72356458273030104)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(69279344575709723)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72357338160030106)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(69279470699709724)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72358297993030109)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(69279502388709725)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.81200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72359151876030111)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(69279617219709726)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72360015782030113)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(69279721061709727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(72362185898064335)
,p_view_id=>wwv_flow_imp.id(72351443393030080)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(69279872685709728)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1087558039498088501)
,p_plug_name=>'Adaia'
,p_parent_plug_id=>wwv_flow_imp.id(14598871456343840)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14069929634863845)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13477366648268331)
,p_button_name=>'BT_BUSCAR_PLANILL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14503435687277214)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7709995775151323)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(14502248832277202)
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
 p_id=>wwv_flow_imp.id(14068145142863727)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(13478326888268341)
,p_button_name=>'BT_VIATICO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Vi\00E1tico')
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10075810208914911)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10075758082914910)
,p_button_name=>'BT_CREAR_PLANILLA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Planilla'
,p_button_position=>'TOP'
,p_button_condition=>'P31_NRO_PLANILLA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14068841772863734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11644496077537435)
,p_button_name=>'BT_Confirmar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14503783685277217)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14503698930277216)
,p_button_name=>'BT_CREAR'
,p_button_static_id=>'bt_crear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14506623613277246)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14506542919277245)
,p_button_name=>'BT_CARGA_SUC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Carga Sucursales'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10075901244914912)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10075758082914910)
,p_button_name=>'BT_GUARDAR_CAMBIOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('\00BFDesea guardar los cambios?')
,p_button_condition=>'P31_NRO_PLANILLA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1087558139095088502)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1087558039498088501)
,p_button_name=>'BT_adaia'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar Adaia'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P31_IND_CONFIRMA_PREPARACION =''S''  then',
'return false;',
'else return true;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1087559975470088520)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10075758082914910)
,p_button_name=>'BT_imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(121295696037956245)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10075758082914910)
,p_button_name=>'BTN_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:411:&SESSION.::&DEBUG.:RP,411::'
,p_button_css_classes=>'u-color-29-bg u-normal-text'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10076245289914915)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10075758082914910)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'u-color-9-bg  u-normal-text'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14502131477277201)
,p_branch_name=>'BR_BUCAR_PLANILLA'
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31:P31_NRO_PLANILLA,P31_COD_EMPRESA:&P31_NRO_PLANILLA.,&P_COD_EMPRESA.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14069929634863845)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10079173558914944)
,p_branch_name=>'REDIRECT_VIATICO_NRO_PLANILLA'
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_NRO_PLANILLA:&P31_NRO_PLANILLA.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14068145142863727)
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P31_CONTROL'
,p_branch_condition_text=>'2'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10079229515914945)
,p_branch_name=>'REDIRECT_VIATICO_COMPROBANTE'
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_NRO_COMPROBANTE,P33_SER_COMPROBANTE:&P31_VNRO_VALE.,&P31_VSER_VALE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14068145142863727)
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P31_CONTROL'
,p_branch_condition_text=>'1'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1087560914091088530)
,p_branch_name=>'IR_PAGINA_411'
,p_branch_action=>'f?p=&APP_ID.:411:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(10075810208914911)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1087561183686088532)
,p_branch_name=>'IR_PAGINA_411_aCT'
,p_branch_action=>'f?p=&APP_ID.:411:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(10075901244914912)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9706208973340633)
,p_name=>'P31_MODIFICA_PLANILLA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9706369808340634)
,p_name=>'P31_OLD_ESTADO_REPARTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9706683974340637)
,p_name=>'P31_FEC_CAMBIO_ESTADO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9706738327340638)
,p_name=>'P31_COD_USUARIO_CAMBIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9706854071340639)
,p_name=>'P31_MENSAJE_EX'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9706922120340640)
,p_name=>'P31_TITULO_MSJ'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10078096616914933)
,p_name=>'P31_FAC_CONTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14066387010863709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10078191613914934)
,p_name=>'P31_FAC_CREDITO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14066387010863709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10078645922914939)
,p_name=>'P31_CONTROL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13478326888268341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11483052806011905)
,p_name=>'P31_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13478326888268341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11483795950011912)
,p_name=>'P31_OBSE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11483863501011913)
,p_name=>'P31_OBSE_REENVIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_prompt=>unistr('Observaci\00F3n Reenv\00EDo')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11484175723011916)
,p_name=>'P31_SEQ_ID_BORRAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11644371287537434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11644637091537437)
,p_name=>'P31_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13477366648268331)
,p_item_default=>'P_COD_EMPRESA'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11644747640537438)
,p_name=>'P31_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13477366648268331)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal||'' - ''||descripcion d, cod_sucursal r',
'from inv.sucursales',
'where cod_empresa = :P_COD_EMPRESA;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccione...'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11644891232537439)
,p_name=>'P31_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13477366648268331)
,p_prompt=>'Nro Planilla'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11644924135537440)
,p_name=>'P31_FEC_PLANILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13477366648268331)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_DATE(SYSDATE,''DD/MM/YYYY'')',
'FROM DUAL;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('Fecha Creaci\00F3n')
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645099090537441)
,p_name=>'P31_FEC_RENDICION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13478001256268338)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645184678537442)
,p_name=>'P31_FEC_RENDICION_ORIG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645282355537443)
,p_name=>'P31_COD_ZONA_REPARTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13478186262268339)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_zona_reparto||''-''||descripcion d , cod_zona_reparto r',
' from rp_zonas_reparto ',
' WHERE  activo=''S''',
'  and decode(:P_COD_SUCURSAL,''262'',''262'',''190'')=NVL(sucural_zona_reparto,decode(:P_COD_SUCURSAL,''262'',''262'',''190'')) ',
'order by descripcion'))
,p_cSize=>30
,p_cMaxlength=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645371869537444)
,p_name=>'P31_COD_REPARTIDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13478186262268339)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.cod_repartidor||''-''||nvl( p.nombre, p.nomb_fantasia )  d, r.cod_repartidor r',
'  from rp_repartidores r, personas p ',
' where r.cod_empresa = :P_COD_EMPRESA',
'  and r.cod_persona = p.cod_persona',
'  and nvl( r.activo, ''S'' ) = ''S'' ',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645458313537445)
,p_name=>'P31_COD_VEHICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13478186262268339)
,p_prompt=>'Vehiculo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_vehiculo||''-''||descripcion d, cod_vehiculo r',
'  from rp_vehiculos ',
' where cod_empresa = :P_COD_EMPRESA',
'   and nvl(Activo,''S'')=''S''',
'   and cod_repartidor = :P31_COD_REPARTIDOR',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645535451537446)
,p_name=>'P31_COD_USUARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11644496077537435)
,p_prompt=>'Usuario Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645642277537447)
,p_name=>'P31_ESTADO_CHECK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13478001256268338)
,p_prompt=>'Estado Check'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Rendido;R'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645795994537448)
,p_name=>'P31_KM_SALIDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13478326888268341)
,p_prompt=>'Salida'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645845609537449)
,p_name=>'P31_KM_ESTIMADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13478326888268341)
,p_prompt=>'Estimado'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11645925464537450)
,p_name=>'P31_KM_LLEGADA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13478326888268341)
,p_prompt=>'Llegada'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13474364167268301)
,p_name=>'P31_COMENTARIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(13478186262268339)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13474492705268302)
,p_name=>'P31_HORA_ALTA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11644496077537435)
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13474564194268303)
,p_name=>'P31_COD_REPARTIDOR_MM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13478186262268339)
,p_prompt=>'Chofer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_REPARTIDOR_MM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select   R.COD_REPARTIDOR R, upper(nombre ||''  - ''||telefono) D',
' from rp_repartidores_log r',
'where r.cod_empresa = :P_COD_EMPRESA',
'  and nvl(Activo,''S'')=''S''',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
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
 p_id=>wwv_flow_imp.id(13474664926268304)
,p_name=>'P31_COD_USUARIO_RENDICION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13474713390268305)
,p_name=>'P31_NRO_PEDIDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13477366648268331)
,p_prompt=>unistr('N\00BA Pedido')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13474832699268306)
,p_name=>'P31_COD_AYUDANTE_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13478186262268339)
,p_prompt=>'Ayudante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AYUDANTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre D, e.cod_empleado R',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona ',
'and nvl(e.activo, ''S'') = ''S'' ',
'AND COD_CARGO in (''325'',''222'' ,''411'')',
'order by nvl(nomb_fantasia, nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>15
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13474983701268307)
,p_name=>'P31_COD_AYUDANTE_2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13478186262268339)
,p_prompt=>'Ayudante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AYUDANTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre D, e.cod_empleado R',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona ',
'and nvl(e.activo, ''S'') = ''S'' ',
'AND COD_CARGO in (''325'',''222'' ,''411'')',
'order by nvl(nomb_fantasia, nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>15
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13475028902268308)
,p_name=>'P31_COD_PUNTEADOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(13478186262268339)
,p_prompt=>'Punteador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado||''-''||nombre d, e.cod_empleado r',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA',
'   and e.cod_persona = p.cod_persona ',
'   and nvl(e.activo, ''S'') = ''S'' ',
'   AND COD_CARGO in (''325'',''222'' ,''411'')',
'order by nvl(nomb_fantasia, nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>15
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13475177192268309)
,p_name=>'P31_MONTO_VIATICO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13475253862268310)
,p_name=>'P31_COSTO_FLETE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13475303600268311)
,p_name=>'P31_FECHA_LLEGADA'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13475430321268312)
,p_name=>'P31_FECHA_SALIDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13477366648268331)
,p_prompt=>'Fecha Salida'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13475584438268313)
,p_name=>'P31_PORCENTAJE_COSTO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13475691558268314)
,p_name=>'P31_COD_AYUDANTE_3'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13478186262268339)
,p_prompt=>'Ayudante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AYUDANTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre D, e.cod_empleado R',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona ',
'and nvl(e.activo, ''S'') = ''S'' ',
'AND COD_CARGO in (''325'',''222'' ,''411'')',
'order by nvl(nomb_fantasia, nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>15
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13475777960268315)
,p_name=>'P31_FEC_REGRESO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13477366648268331)
,p_prompt=>'Fecha Regreso'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13475882180268316)
,p_name=>'P31_SER_PLANILLA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13475979450268317)
,p_name=>'P31_COD_USUARIO_RECEPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13476063672268318)
,p_name=>'P31_FEC_RECEPCION'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13476148463268319)
,p_name=>'P31_FEC_ACTUALIZACION'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13476258296268320)
,p_name=>'P31_DESTINO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13476348627268321)
,p_name=>'P31_FECHA_AUTORIZA'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13476457799268322)
,p_name=>'P31_COD_USUARIO_AUTORIZA'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13476571011268323)
,p_name=>'P31_COD_USUARIO_GASTO'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13476634070268324)
,p_name=>'P31_TARIFA_GS_KM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13478326888268341)
,p_prompt=>'Gs x Km'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13476701044268325)
,p_name=>'P31_NRO_PLANILLA_CPH'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13477366648268331)
,p_prompt=>'Planilla CPH'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13476898609268326)
,p_name=>'P31_FECHA_RECEPCION_PLANILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11644496077537435)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha'
,p_source=>'select sysdate from dual;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13476980046268327)
,p_name=>'P31_CODIGO_USUARIO_RECEPCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11644496077537435)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13477035502268328)
,p_name=>'P31_TIPO_REPARTO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13477149814268329)
,p_name=>'P31_FECHA_ALTA_PLANILLA'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(11644238162537433)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13477201552268330)
,p_name=>'P31_NRO_PLANILLA_QM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13477366648268331)
,p_prompt=>'Planilla QM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14066447027863710)
,p_name=>'P31_NOTA_REMISION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14066387010863709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14066624352863712)
,p_name=>'P31_SOL_NO_CONF'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14066387010863709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14066769539863713)
,p_name=>'P31_COD_MONEDA_BASE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14066387010863709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14068253322863728)
,p_name=>'P31_VNRO_VALE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13478326888268341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14068322534863729)
,p_name=>'P31_VSER_VALE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13478326888268341)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14502398862277203)
,p_name=>'P31_EMPRESA_ORIGEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_item_default=>'NGO'
,p_prompt=>'Empresa Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NGO;NGO,CPH;CPH,GONZALITO;GONZALITO,BESTHOME;BH'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14502424011277204)
,p_name=>'P31_ENTREGA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_prompt=>'Entrega'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ENTREGA;ENTREGA,TRANSFERENCIA;TRANSFERENCIA,PARA FIRMAR;PARA_FIRMAR'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Seleccionar'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14502592584277205)
,p_name=>'P31_TIP_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_item_default=>'FCR'
,p_prompt=>'Tip Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:FCR;FCR,FCO;FCO,REM;REM,SNC;SNC,RET;RET'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14502676254277206)
,p_name=>'P31_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_prompt=>'Ser Comprobante'
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
 p_id=>wwv_flow_imp.id(14502708523277207)
,p_name=>'P31_NRO_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_prompt=>'Nro Comprobante'
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
 p_id=>wwv_flow_imp.id(14502850395277208)
,p_name=>'P31_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(14502954148277209)
,p_name=>'P31_MONEDA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  (select descripcion',
'from monedas ',
'where cod_moneda =f.cod_moneda) d,f.cod_moneda R',
'from vt_comprobantes_cabecera f',
'where  f.tip_comprobante = :P31_TIP_COMPROBANTE',
'and f.ser_comprobante = :P31_SER_COMPROBANTE',
'and f.nro_comprobante = :P31_NRO_COMPROBANTE',
'AND F.COD_EMPRESA=:P_COD_EMPRESA ;'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14503027195277210)
,p_name=>'P31_IMPORTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_prompt=>'Importe'
,p_format_mask=>'999G999G999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(14503111328277211)
,p_name=>'P31_VOLUMEN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_prompt=>'Volumen'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(14503227440277212)
,p_name=>'P31_ESTADO1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_item_default=>'P'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Pendiente;P,Reenvio;D,Cobrado;C,Firma Boleta;F,Anulado;A,Con Recibo;R,Devuelta;D,Reasignado;S,En Reparto;E'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14503363173277213)
,p_name=>'P31_ORDEN_ENTREGA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(14502248832277202)
,p_prompt=>'Orden Entrega'
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
 p_id=>wwv_flow_imp.id(14504185495277221)
,p_name=>'P31_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11644371287537434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14504998771277229)
,p_name=>'P31_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14504880965277228)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14505018149277230)
,p_name=>'P31_OBS_REENVIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14504880965277228)
,p_prompt=>unistr('Observaci\00F3n de Reenv\00EDo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14505244387277232)
,p_name=>'P31_CARGA_OBS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14504880965277228)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14505639338277236)
,p_name=>'P31_TOT_GUARANIES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14505578407277235)
,p_prompt=>'Total Guaranies'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14505791823277237)
,p_name=>'P31_TOT_DOLARES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14505578407277235)
,p_prompt=>'Total Dolares'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14506079087277240)
,p_name=>'P31_TOT_VOLUMEN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14505578407277235)
,p_prompt=>'Total Volumen'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14599531961343847)
,p_name=>'P31_CAMBIA_INI_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14066387010863709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14599865452343850)
,p_name=>'P31_AUX_CAMBIA_FEC_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14506542919277245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15761098092998201)
,p_name=>'P31_AUX_CAMBIA_FEC_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14506542919277245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15761785700998208)
,p_name=>'P31_AUX_MSJ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14506542919277245)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20409725158847841)
,p_name=>'P31_AUX_CONFIRMAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11644496077537435)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1087558230606088503)
,p_name=>'P31_FECHA_CONFIRMACION_PREPA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1087558039498088501)
,p_prompt=>'Fecha'
,p_format_mask=>'DD-MM-YYYY HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1087558337263088504)
,p_name=>'P31_COD_USUARIO_CONFIRMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1087558039498088501)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1087558423164088505)
,p_name=>'P31_IND_CONFIRMA_PREPARACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1087558039498088501)
,p_prompt=>'Confirma_Adaia'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1087561458212088535)
,p_name=>'P31_IND_NOCTURNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13478001256268338)
,p_prompt=>'Es Nocturno?'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Nocturno;S'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14070200535863848)
,p_name=>'DA_CARGAR_DATOS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14069929634863845)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14070384695863849)
,p_event_id=>wwv_flow_imp.id(14070200535863848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14503936477277219)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14503783685277217)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9705284551340623)
,p_event_id=>wwv_flow_imp.id(14503936477277219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_SEQ_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9705323918340624)
,p_event_id=>wwv_flow_imp.id(14503936477277219)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7709995775151323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9705479957340625)
,p_event_id=>wwv_flow_imp.id(14503936477277219)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(14503435687277214)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14504056394277220)
,p_event_id=>wwv_flow_imp.id(14503936477277219)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14502248832277202)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14504728717277227)
,p_event_id=>wwv_flow_imp.id(14503936477277219)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE,P31_CLIENTE,P31_MONEDA,P31_VOLUMEN,P31_ORDEN_ENTREGA,P31_IMPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14504258900277222)
,p_name=>'DA_CONSULTAR_SEQ_ID'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_SEQ_ID'
,p_condition_element=>'P31_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14504383075277223)
,p_event_id=>wwv_flow_imp.id(14504258900277222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P31_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9705584109340626)
,p_event_id=>wwv_flow_imp.id(14504258900277222)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(14503435687277214)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9705622188340627)
,p_event_id=>wwv_flow_imp.id(14504258900277222)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7709995775151323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14504688562277226)
,p_event_id=>wwv_flow_imp.id(14504258900277222)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE,P31_CLIENTE,P31_MONEDA,P31_VOLUMEN,P31_ORDEN_ENTREGA,P31_IMPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9705070737340621)
,p_event_id=>wwv_flow_imp.id(14504258900277222)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C007, C017, C021',
'      INTO :P31_ESTADO1, :P31_EMPRESA_ORIGEN, :P31_ENTREGA',
'      FROM APEX_COLLECTIONS',
'     WHERE collection_name = ''COL_DET_RPPLANIL''',
'       AND SEQ_ID = :P31_SEQ_ID;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P31_SEQ_ID'
,p_attribute_03=>'P31_ESTADO1, P31_EMPRESA_ORIGEN,P31_ENTREGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14504505409277225)
,p_event_id=>wwv_flow_imp.id(14504258900277222)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14502248832277202)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14505301827277233)
,p_name=>'DA_CARGAR_OBS'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_CARGA_OBS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14505414847277234)
,p_event_id=>wwv_flow_imp.id(14505301827277233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT  C008, C020',
'      INTO  :P31_OBSERVACION, :P31_OBS_REENVIO',
'      FROM  APEX_COLLECTIONS',
'     WHERE  COLLECTION_NAME = ''COL_DET_RPPLANIL''',
'       AND  SEQ_ID = :P31_CARGA_OBS;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P31_CARGA_OBS'
,p_attribute_03=>'P31_OBSERVACION,P31_OBS_REENVIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7709001754151314)
,p_name=>'DA_CARGAR_SUC'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14506623613277246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7709114161151315)
,p_event_id=>wwv_flow_imp.id(7709001754151314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPPLANIL.PR_CARGAR_SUC (PI_NRO_PLANILLA => :P31_NRO_PLANILLA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P31_NRO_PLANILLA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7709305275151317)
,p_event_id=>wwv_flow_imp.id(7709001754151314)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14506762399277247)
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
 p_id=>wwv_flow_imp.id(9705740305340628)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7709995775151323)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9705812767340629)
,p_event_id=>wwv_flow_imp.id(9705740305340628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPPLANIL.PR_EDITAR_DETALLE ( PI_SEQ_ID          => :P31_SEQ_ID,',
'                                 PI_EMPRESA_ORIGEN  => :P31_EMPRESA_ORIGEN,',
'                                 PI_TIPO_ENTREGA    => :P31_ENTREGA,',
'                                 PI_ESTADO          => :P31_ESTADO1);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P31_SEQ_ID,P31_EMPRESA_ORIGEN,P31_ESTADO1,P31_ENTREGA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9706025519340631)
,p_event_id=>wwv_flow_imp.id(9705740305340628)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14502248832277202)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9705937881340630)
,p_event_id=>wwv_flow_imp.id(9705740305340628)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11644371287537434)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9707856568340649)
,p_name=>'DA_AGREGAR_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14503435687277214)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9707919239340650)
,p_event_id=>wwv_flow_imp.id(9707856568340649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPPLANIL.PR_AGREGAR_DETALLE (  PI_EMPRESA_ORIGEN    => :P31_EMPRESA_ORIGEN,',
'                                   PI_TIPO_ENTREGA      => :P31_ENTREGA,',
'                                   PI_TIP_COMPROBANTE   => :P31_TIP_COMPROBANTE,',
'                                   PI_SER_COMPROBANTE   => :P31_SER_COMPROBANTE,',
'                                   PI_NRO_COMPROBANTE   => :P31_NRO_COMPROBANTE,',
'                                   PI_COD_CLIENTE       => :P31_CLIENTE,',
'                                   PI_COD_MONEDA        => :P31_MONEDA,',
'                                   PI_IMPORTE           => :P31_IMPORTE,',
'                                   PI_VOLUMEN           => :P31_VOLUMEN,',
'                                   PI_ESTADO            => :P31_ESTADO1,',
'                                   PI_ORDEN_ENTREGA     => :P31_ORDEN_ENTREGA,',
'                                   PI_NRO_PLANILLA      => :P31_NRO_PLANILLA,',
'                                   PI_OBSE_REENVIO      => :P31_OBSE_REENVIO,',
'                                   PI_OBSERVACION      =>  :P31_OBSE,',
'                                   PI_COD_EMPRESA => :P_COD_EMPRESA); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P31_NRO_PLANILLA,P31_EMPRESA_ORIGEN,P31_ENTREGA,P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE,P31_CLIENTE,P31_MONEDA,P31_IMPORTE,P31_VOLUMEN,P31_ESTADO1,P31_ORDEN_ENTREGA,P31_OBSE_REENVIO,P31_OBSE,P_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10074828037914901)
,p_event_id=>wwv_flow_imp.id(9707856568340649)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14502248832277202)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10074913211914902)
,p_event_id=>wwv_flow_imp.id(9707856568340649)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11644371287537434)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69278076067709710)
,p_event_id=>wwv_flow_imp.id(9707856568340649)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_EMPRESA_ORIGEN,P31_ENTREGA,P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE,P31_CLIENTE,P31_MONEDA,P31_IMPORTE,P31_VOLUMEN,P31_ESTADO1,P31_ORDEN_ENTREGA,P31_OBSE,P31_OBSE_REENVIO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'null;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9706411495340635)
,p_name=>'DA_ESTADO_CAMBIO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_ESTADO1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9706510682340636)
,p_event_id=>wwv_flow_imp.id(9706411495340635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    IF nvl(:P31_MODIFICA_PLANILLA,''N'')<>''S''  THEN',
'    	',
'        IF :P31_OLD_ESTADO_REPARTO = ''C'' THEN',
'          :P31_ESTADO1 := :P31_OLD_ESTADO_REPARTO;',
'          :P31_TITULO_MSJ := ''Comprobante Cobrado'';',
'          :P31_MENSAJE_EX := ''No se puede modificar el estado del comprobante al estar cobrado.'';',
'',
'        ELSIF :P31_OLD_ESTADO_REPARTO = ''A'' THEN',
'          :P31_ESTADO1 := :P31_OLD_ESTADO_REPARTO;',
'          :P31_TITULO_MSJ := ''Comprobante Anulado'';',
'          :P31_MENSAJE_EX := ''No se puede modificar el estado del comprobante al estar anulado.'';',
'',
'        ELSIF :P31_OLD_ESTADO_REPARTO = ''F'' THEN',
'          :P31_ESTADO1 := :P31_OLD_ESTADO_REPARTO;',
'          :P31_TITULO_MSJ := ''Comprobante Firmado'';',
'          :P31_MENSAJE_EX := ''No se puede modificar el estado del comprobante al estar firma boleta.'';',
'',
'        ELSIF :P31_OLD_ESTADO_REPARTO = ''D'' THEN',
'          :P31_ESTADO1 := :P31_OLD_ESTADO_REPARTO;',
'          :P31_TITULO_MSJ := ''Comprobante Devuelto'';',
'          :P31_MENSAJE_EX := ''No se puede modificar el estado del comprobante al estar devuelto.'';',
'',
'        ELSIF :P31_OLD_ESTADO_REPARTO = ''P'' AND',
'              :P31_ESTADO1 IN( ''C'', ''A'' ) THEN',
'          :P31_ESTADO1 := :P31_OLD_ESTADO_REPARTO;',
'          :P31_TITULO_MSJ := ''Comprobante Pendiente'';',
'          :P31_MENSAJE_EX := ''No se puede modificar el estado del comprobante al estar pendiente.'';',
'',
'        END IF;',
'',
'        :P31_FEC_CAMBIO_ESTADO := sysdate;',
'        :P31_COD_USUARIO_CAMBIO := :APP_USER;',
'    ELSE',
'        :P31_MODIFICA_PLANILLA := ''No tiene permisos'';    ',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9707015269340641)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_MENSAJE_EX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9707171533340642)
,p_event_id=>wwv_flow_imp.id(9707015269340641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P31_MENSAJE_EX.'
,p_attribute_02=>'&P31_TITULO_MSJ.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9707467280340645)
,p_name=>'DA_PERMISOS'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P31_MODIFICA_PLANILLA'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9707541709340646)
,p_event_id=>wwv_flow_imp.id(9707467280340645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No tiene permisos para modificar con su usuario.'
,p_attribute_02=>'Aviso'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9707602251340647)
,p_name=>'DA_ASIGNAR'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_OLD_ESTADO_REPARTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9707773305340648)
,p_event_id=>wwv_flow_imp.id(9707602251340647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P31_ESTADO1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10075122960914904)
,p_name=>'DA_DESHABILITAR'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P31_ESTADO_CHECK'
,p_display_when_cond2=>'R'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10075225773914905)
,p_event_id=>wwv_flow_imp.id(10075122960914904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_COD_EMPRESA,P31_COD_SUCURSAL,P31_FEC_PLANILLA,P31_NRO_PEDIDO,P31_FECHA_SALIDA,P31_FEC_REGRESO,P31_NRO_PLANILLA_CPH,P31_NRO_PLANILLA_QM,P31_KM_SALIDA,P31_KM_LLEGADA,P31_KM_ESTIMADO,P31_TARIFA_GS_KM,P31_VSER_VALE,P31_ESTADO_CHECK,P31_FEC_RENDICION,'
||'P31_COD_ZONA_REPARTO,P31_COD_REPARTIDOR,P31_COD_VEHICULO,P31_COD_REPARTIDOR_MM,P31_COD_AYUDANTE_1,P31_COD_AYUDANTE_2,P31_COD_AYUDANTE_3,P31_COD_PUNTEADOR,P31_COMENTARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10075393453914906)
,p_event_id=>wwv_flow_imp.id(10075122960914904)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(14503783685277217)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10075450995914907)
,p_event_id=>wwv_flow_imp.id(10075122960914904)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(14068841772863734)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10075584884914908)
,p_event_id=>wwv_flow_imp.id(10075122960914904)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(14506623613277246)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10075665892914909)
,p_event_id=>wwv_flow_imp.id(10075122960914904)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7709995775151323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10076093697914913)
,p_event_id=>wwv_flow_imp.id(10075122960914904)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10075901244914912)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10076101290914914)
,p_event_id=>wwv_flow_imp.id(10075122960914904)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(10075810208914911)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1087561597448088536)
,p_event_id=>wwv_flow_imp.id(10075122960914904)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_IND_NOCTURNO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1087558930389088510)
,p_event_id=>wwv_flow_imp.id(10075122960914904)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_IND_CONFIRMA_PREPARACION'
,p_attribute_01=>'document.getElementById("P31_IND_CONFIRMA_PREPARACION").disabled = true;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1087559062638088511)
,p_name=>'DA_DESHABILITAR_INICIO'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1087559805023088519)
,p_event_id=>wwv_flow_imp.id(1087559062638088511)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_IND_CONFIRMA_PREPARACION'
,p_attribute_01=>'document.getElementById("P31_IND_CONFIRMA_PREPARACION").disabled = true;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10077562238914928)
,p_name=>'DA_EDITAR_CAB'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10075901244914912)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10077696978914929)
,p_event_id=>wwv_flow_imp.id(10077562238914928)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPPLANIL.PR_EDITAR_CABECERA (  PI_NRO_PLANILLA      => :P31_NRO_PLANILLA,',
'                                    PI_FEC_PLANILLA     => :P31_FEC_PLANILLA,',
'                                    PI_COD_ZONA_REPARTO => :P31_COD_ZONA_REPARTO,',
'                                    PI_COD_REPARTIDOR   => :P31_COD_REPARTIDOR,',
'                                    PI_COD_VEHICULO     => :P31_COD_VEHICULO,',
'                                    PI_KM_SALIDA        => :P31_KM_SALIDA,',
'                                    PI_KM_ESTIMADO      => :P31_KM_ESTIMADO,',
'                                    PI_KM_LLEGADA       => :P31_KM_LLEGADA,',
'                                    PI_COMENTARIO       => :P31_COMENTARIO,',
'                                    PI_COD_REPARTIDOR_MM => :P31_COD_REPARTIDOR_MM,',
'                                    PI_NRO_PEDIDO       => :P31_NRO_PEDIDO,',
'                                    PI_COD_AYUDANTE_1   => :P31_COD_AYUDANTE_1,',
'                                    PI_COD_AYUDANTE_2   => :P31_COD_AYUDANTE_2,        ',
'                                    PI_COD_AYUDANTE_3   => :P31_COD_AYUDANTE_3,',
'                                    PI_COD_PUNTEADOR    => :P31_COD_PUNTEADOR,',
'                                    PI_FECHA_LLEGADA    => :P31_FECHA_LLEGADA,',
'                                    PI_FECHA_SALIDA     => :P31_FECHA_SALIDA,',
'                                    PI_FEC_REGRESO      => :P31_FEC_REGRESO,',
'                                    PI_TARIFA_GS_KM     => :P31_TARIFA_GS_KM,',
'                                    PI_NRO_PLANILLA_CPH => :P31_NRO_PLANILLA_CPH,',
'                                    PI_NRO_PLANILLA_QM  => :P31_NRO_PLANILLA_QM,',
'                                     PI_IND_CONFIRMAR_PREPARACION => :P31_IND_CONFIRMA_PREPARACION,',
'                                  PI_COD_USUARIO_CONFIRMA => :P31_COD_USUARIO_CONFIRMA,',
'                                  PI_FECHA_CONFIRMACION_ADAIA => :P31_FECHA_CONFIRMACION_PREPA,',
'                                   pi_ind_rendido => :P31_ESTADO_CHECK,',
'                                  PI_FEC_RENDICION => :P31_FEC_RENDICION,',
'                                  PI_IND_NOCTURNO => :P31_IND_NOCTURNO',
'',
'                                    );',
'                                    ',
'    --guardo en base los cambios de la coleccion',
'   ',
'    RPPLANIL.PR_GUARDAR_DETALLE(:P31_NRO_PLANILLA);',
'    --elimino en base el registro de la coleccion marcado en S',
'    RPPLANIL.PR_ELIMINAR_DETALLE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;'))
,p_attribute_02=>'P31_NRO_PLANILLA, P31_FEC_PLANILLA, P31_COD_ZONA_REPARTO, P31_COD_REPARTIDOR, P31_COD_VEHICULO, P31_KM_SALIDA,P31_KM_ESTIMADO,P31_KM_LLEGADA,P31_COMENTARIO,  P31_COD_REPARTIDOR_MM, P31_NRO_PEDIDO, P31_COD_AYUDANTE_1,P31_COD_AYUDANTE_2,P31_COD_AYUDANT'
||'E_3, P31_COD_PUNTEADOR, P31_FECHA_LLEGADA,P31_FECHA_SALIDA, P31_FEC_REGRESO, P31_TARIFA_GS_KM, P31_NRO_PLANILLA_CPH, P31_NRO_PLANILLA_QM,P31_EMPRESA_ORIGEN,P31_ENTREGA,P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE,P31_CLIENTE,P31_MONEDA'
||',P31_IMPORTE,P31_VOLUMEN,P31_ESTADO1,P31_ORDEN_ENTREGA,P31_MODIFICA_PLANILLA,P31_OLD_ESTADO_REPARTO,P31_FEC_CAMBIO_ESTADO,P31_COD_USUARIO_CAMBIO,P31_IND_NOCTURNO,P31_ESTADO_CHECK,P31_FEC_RENDICION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1087561017975088531)
,p_event_id=>wwv_flow_imp.id(10077562238914928)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ACTUALIZAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1087560028361088521)
,p_name=>'DA_imprimir'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1087559975470088520)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1087560491512088525)
,p_event_id=>wwv_flow_imp.id(1087560028361088521)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'var comprobante = document.getElementById("P31_NRO_PLANILLA").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
' ',
'var nro_comprobante = apex.item("P31_NRO_PLANILLA").getValue();',
' ',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "RPENTENC";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_NRO_PLANILLA'', value: nro_comprobante}) ',
' ',
'',
'createReportUrl(vfacnom, params)',
'',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10078332077914936)
,p_name=>'DA_CALCULO_PARAM_VIATICO'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14068145142863727)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11483265928011907)
,p_name=>'DA_VIATICO'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14068145142863727)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10078579258914938)
,p_event_id=>wwv_flow_imp.id(11483265928011907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P31_NRO_PLANILLA IS NOT NULL THEN',
'    		begin	',
'				BEGIN',
'						SELECT NRO_COMPROBANTE,',
'							   SER_COMPROBANTE',
'						  INTO :P31_VNRO_VALE,',
'						  	   :P31_VSER_VALE',
'						  FROM CP_VALES ',
'						 WHERE COD_EMPRESA  = :P_COD_EMPRESA',
'						   AND NRO_PLANILLA = :P31_NRO_PLANILLA;',
'				EXCEPTION',
'						WHEN OTHERS THEN',
'						    :P31_VNRO_VALE :=	NULL;',
'						    :P31_VSER_VALE :=	NULL;',
'				END;',
'',
'				IF :P31_VNRO_VALE IS NOT NULL THEN    ',
'				    :P31_CONTROL := 1;',
'				ELSE',
'				    :P31_CONTROL := 2;         ',
'				END IF;',
'   				',
'    	  end;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P31_NRO_COMPROBANTE,P31_SER_COMPROBANTE'
,p_attribute_03=>'P31_CONTROL,P31_VNRO_VALE,P31_VSER_VALE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11482621672011901)
,p_event_id=>wwv_flow_imp.id(11483265928011907)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 33,',
'                            p_items  => ''P33_NRO_PLANILLA,P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE'',',
'                            p_values => (''''||:P31_NRO_PLANILLA||'',''||:P31_VSER_VALE||'',''||:P31_VNRO_VALE||'''')) f_url_1',
'    INTO :P31_URL',
'     FROM DUAL;'))
,p_attribute_02=>'P31_NRO_PLANILLA,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE'
,p_attribute_03=>'P31_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11483137715011906)
,p_event_id=>wwv_flow_imp.id(11483265928011907)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P31_URL").getValue();',
'',
'apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11484238264011917)
,p_name=>'DA_BORRAR_COLECCION'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_SEQ_ID_BORRAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11484332496011918)
,p_event_id=>wwv_flow_imp.id(11484238264011917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P31_SEQ_ID_BORRAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11484699820011921)
,p_event_id=>wwv_flow_imp.id(11484238264011917)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro que desea eliminar comprobante?')
,p_attribute_02=>unistr('Confirmaci\00F3n')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11484759478011922)
,p_event_id=>wwv_flow_imp.id(11484238264011917)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (   p_collection_name       => ''COL_DET_RPPLANIL'',',
'                                                p_seq                   => :P31_SEQ_ID_BORRAR,',
'                                                p_attr_number           => 40,',
'                                                p_attr_value            => ''S'' );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P31_SEQ_ID_BORRAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11484843936011923)
,p_event_id=>wwv_flow_imp.id(11484238264011917)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11644371287537434)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69278531878709715)
,p_event_id=>wwv_flow_imp.id(11484238264011917)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_OBSERVACION,P31_OBSE_REENVIO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'NULL;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15761143502998202)
,p_name=>'DA_FEC_INI'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_AUX_CAMBIA_FEC_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15761282605998203)
,p_event_id=>wwv_flow_imp.id(15761143502998202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P31_AUX_MSJ := NULL;',
'    FOR CC IN (',
'        select  SEQ_ID,',
'                c001,-- COD_EMPRESA,',
'                c002,-- NRO_PLANILLA,',
'                c003,-- COD_SUCURSAL,',
'                c004,-- FEC_PLANILLA,',
'                c005,-- FECHA_INICIO,',
'                c006,-- FECHA_FIN,',
'                c007,-- COD_USUARIO,',
'                c008,-- COD_POSICION_CELDA,',
'                c009, -- FEC_ASIGNACION_CELDA ',
'                c010  -- celda',
'          FROM APEX_COLLECTIONS',
'          WHERE COLLECTION_NAME = ''COL_SUCURSAL''',
'            AND SEQ_ID = :P31_AUX_CAMBIA_FEC_INI)',
'',
'    LOOP',
'        IF :P31_NRO_PLANILLA IS NOT NULL AND (CC.c005 IS NULL or :P31_CAMBIA_INI_FIN = ''S'' ) THEN    ',
'            IF CC.C003 IS NOT NULL THEN',
'                APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''COL_SUCURSAL'',',
'                                                         P_SEQ  => CC.SEQ_ID,',
'                                                         P_C001 => CC.C001,',
'                                                         P_C002 => CC.C002,',
'                                                         P_C003 => CC.C003,',
'                                                         P_C004 => CC.C004,',
'                                                         P_C005 => SYSDATE,',
'                                                         P_C006 => CC.C006,',
'                                                         P_C007 => :APP_USER,',
'                                                         P_C008 => CC.C008,',
'                                                         P_C009 => CC.C009,',
'                                                         P_C010 => CC.C010);',
'            END IF;',
'        ELSE',
'            :P31_AUX_MSJ := ''La sucursal ya tiene un inicio usted no posee permiso para actualizar.'';     ',
'        END IF;    ',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, sqlerrm);    ',
'END;        ',
'',
''))
,p_attribute_02=>'P31_AUX_CAMBIA_FEC_INI,P31_NRO_PLANILLA,P31_CAMBIA_INI_FIN'
,p_attribute_03=>'P31_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15761465515998205)
,p_event_id=>wwv_flow_imp.id(15761143502998202)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14506762399277247)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P31_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15761605743998207)
,p_event_id=>wwv_flow_imp.id(15761143502998202)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P31_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P31_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15761839248998209)
,p_name=>'DA_FEC_FIN'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_AUX_CAMBIA_FEC_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15761934393998210)
,p_event_id=>wwv_flow_imp.id(15761839248998209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P31_AUX_MSJ := NULL;',
'    FOR CC IN (',
'        select  SEQ_ID,',
'                c001,-- COD_EMPRESA,',
'                c002,-- NRO_PLANILLA,',
'                c003,-- COD_SUCURSAL,',
'                c004,-- FEC_PLANILLA,',
'                c005,-- FECHA_INICIO,',
'                c006,-- FECHA_FIN,',
'                c007,-- COD_USUARIO,',
'                c008,-- COD_POSICION_CELDA,',
'                c009,-- FEC_ASIGNACION_CELDA ',
'                c010 -- CELDA',
'          FROM APEX_COLLECTIONS',
'          WHERE COLLECTION_NAME = ''COL_SUCURSAL''',
'            AND SEQ_ID = :P31_AUX_CAMBIA_FEC_FIN)',
'',
'    LOOP',
'        IF :P31_NRO_PLANILLA IS NOT NULL AND ((CC.c005 IS NOT NULL AND CC.c006 IS NULL) OR :P31_CAMBIA_INI_FIN = ''S'' ) THEN                ',
'            APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''COL_SUCURSAL'',',
'                                                     P_SEQ  => CC.SEQ_ID,',
'                                                     P_C001 => CC.C001,',
'                                                     P_C002 => CC.C002,',
'                                                     P_C003 => CC.C003,',
'                                                     P_C004 => CC.C004,',
'                                                     P_C005 => CC.C005,',
'                                                     P_C006 => SYSDATE,',
'                                                     P_C007 => CC.C007,',
'                                                     P_C008 => CC.C008,',
'                                                     P_C009 => CC.C009,',
'                                                     P_C010 => CC.C010);',
'            ',
'        ELSE',
'            :P31_AUX_MSJ := ''La sucursal ya tiene un inicio usted no posee permiso para actualizar.'';     ',
'        END IF;    ',
'    END LOOP;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, sqlerrm);    ',
'END;        ',
'',
''))
,p_attribute_02=>'P31_AUX_CAMBIA_FEC_FIN,P31_NRO_PLANILLA,P31_CAMBIA_INI_FIN'
,p_attribute_03=>'P31_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15762030966998211)
,p_event_id=>wwv_flow_imp.id(15761839248998209)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14506762399277247)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P31_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15762134546998212)
,p_event_id=>wwv_flow_imp.id(15761839248998209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P31_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P31_AUX_MSJ'
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
 p_id=>wwv_flow_imp.id(20408316822847827)
,p_name=>'DA_CONFIRMAR'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(10075810208914911)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20408457174847828)
,p_event_id=>wwv_flow_imp.id(20408316822847827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    VCONTROLA VARCHAR2(1):=''N''; ',
'    VENTREGA VARCHAR(20);',
'BEGIN ',
'    :P31_AUX_CONFIRMAR := 2;',
'    BEGIN',
'        SELECT C021 TIPO_ENTREGA',
'          INTO VENTREGA',
'          FROM APEX_COLLECTIONS',
'         WHERE collection_name = ''COL_DET_RPPLANIL''',
'           AND SEQ_ID = 1;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            VENTREGA := NULL;',
'    END;        ',
'',
'    IF :P31_NRO_PLANILLA IS NOT NULL AND :P31_FECHA_RECEPCION_PLANILLA IS  NULL  AND VENTREGA <> ''ENTREGA'' THEN ',
'        :P31_FECHA_RECEPCION_PLANILLA:=SYSDATE;',
'        :P31_CODIGO_USUARIO_RECEPCION:= :P_COD_USUARIO; ',
'        :P31_AUX_CONFIRMAR := 1;--COMMIT; ',
'    ELSE ',
'        BEGIN ',
'            select DISTINCT ''S'' ',
'              into VCONTROLA  ',
'              FROM sucursal_zona z',
'             WHERE  COD_SUCURSAL = :P31_COD_SUCURSAL',
'               AND z.cod_zona_suc IN (''SL'');',
'        EXCEPTION ',
'            WHEN  OTHERS THEN ',
'                VCONTROLA    := ''N'' ; ',
'        END;     ',
'        IF   VCONTROLA   = ''N''  THEN ',
'            :P31_FECHA_RECEPCION_PLANILLA:=SYSDATE;',
'            :P31_CODIGO_USUARIO_RECEPCION:= :P_COD_USUARIO;',
'        :P31_AUX_CONFIRMAR := 1;--COMMIT;            	',
'        ELSE ',
'            declare ',
'                vexiste_celda_VACIA varchar2(1):= ''N'';',
'                V_EXISTE_SUC varchar2(1):= ''N'';',
'            begin ',
'                BEGIN  ',
'                    select ''S''',
'                      INTO   V_EXISTE_SUC',
'                      from RP_REPARTO_TIEMPOS T',
'                     WHERE T.COD_EMPRESA = :P_COD_EMPRESA--:P31_COD_EMPRESA',
'                       AND T.NRO_PLANILLA = :P31_NRO_PLANILLA',
'                       AND ROWNUM = ''1'';',
'                EXCEPTION ',
'                    WHEN OTHERS THEN ',
'                        V_EXISTE_SUC:=  ''N''; ',
'                END; ',
'                IF   V_EXISTE_SUC =  ''S'' THEN ',
'                    begin',
'                        select ''S''',
'                          INTO   vexiste_celda_vacia ',
'                          from RP_REPARTO_TIEMPOS T',
'                         WHERE T.COD_EMPRESA = :P_COD_EMPRESA--:P31_COD_EMPRESA',
'                           AND T.NRO_PLANILLA = :P31_NRO_PLANILLA',
'                           AND T.COD_POSICION_CELDA IS NULL ',
'                           AND ROWNUM = ''1'';',
'                    exception ',
'                        when no_data_found then ',
'                            vexiste_celda_vacia :=  ''N'' ; ',
'                        when others then ',
'                            RAISE_APPLICATION_ERROR(-20000,''Error al seleccionar Celda ''||sqlerrm);	   ',
'                    end;',
'                    if  vexiste_celda_VACIA  =''S'' then ',
'                    ---mensaje_ex(''Complete todas las celdas para confirmar '');	',
'                    -- raise form_trigger_failure; ',
'                    --SE SACA EL CONTROL A PEDIDO DE DAVID ',
'                    :P31_FECHA_RECEPCION_PLANILLA:=SYSDATE;',
'                    :P31_CODIGO_USUARIO_RECEPCION:= :P_COD_USUARIO;',
'                    :P31_AUX_CONFIRMAR := 1;--COMMIT; ',
'                    ELSE ',
'                        :P31_FECHA_RECEPCION_PLANILLA:=SYSDATE;',
'                        :P31_CODIGO_USUARIO_RECEPCION:= :P_COD_USUARIO; ',
'                        :P31_AUX_CONFIRMAR := 1;--COMMIT;  ',
'                    end if; ',
'',
'                ELSE ',
'                    RAISE_APPLICATION_ERROR(-20000,''Favor complete la seccion de tiempos con las sucursales y celdas correspondientes para confirmar la planilla '');	  ',
'                end if; ',
'            end;',
'        END IF;',
'    end if; ',
'END; ',
''))
,p_attribute_02=>'P31_NRO_PLANILLA,P_COD_USUARIO,P31_COD_EMPRESA,P31_COD_SUCURSAL,P31_FECHA_RECEPCION_PLANILLA'
,p_attribute_03=>'P31_FECHA_RECEPCION_PLANILLA,P31_CODIGO_USUARIO_RECEPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74239200773127904)
,p_event_id=>wwv_flow_imp.id(20408316822847827)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vID number;',
'vplanilla number;',
'BEGIN',
'    begin',
'        select 1 ',
'        into vID',
'        from RP_REPARTO_CABECERA',
'        WHERE NRO_PLANILLA=:P31_NRO_PLANILLA;',
'        exception when others then',
'        vID :=2;',
'    end;',
'',
'    IF vID=2 THEN',
'    select nvl( max( nro_planilla ), 0 ) + 1 into :P31_NRO_PLANILLA',
'      from rp_reparto_cabecera',
'where  nro_planilla<3195960;',
'',
'        INSERT INTO RP_REPARTO_CABECERA (COD_EMPRESA,FECHA_ALTA_PLANILLA,COD_SUCURSAL,NRO_PLANILLA,FEC_PLANILLA,FEC_RENDICION,FEC_RENDICION_ORIG,COD_ZONA_REPARTO,COD_REPARTIDOR,COD_VEHICULO,COD_USUARIO,ESTADO,KM_SALIDA,KM_ESTIMADO,KM_LLEGADA,COMENTAR'
||'IO,HORA_ALTA,COD_REPARTIDOR_MM,COD_USUARIO_RENDICION,NRO_PEDIDO,COD_AYUDANTE_1,COD_AYUDANTE_2,COD_PUNTEADOR,MONTO_VIATICO,COSTO_FLETE,FECHA_LLEGADA,FECHA_SALIDA,PORCENTAJE_COSTO,COD_AYUDANTE_3,FEC_REGRESO,SER_PLANILLA,COD_USUARIO_RECEPCION,FEC_RECEPC'
||'ION,FEC_ACTUALIZACION,DESTINO,FECHA_AUTORIZA,COD_USUARIO_AUTORIZA,COD_USUARIO_GASTO,TARIFA_GS_KM,NRO_PLANILLA_CPH,FECHA_RECEPCION_PLANILLA,CODIGO_USUARIO_RECEPCION,TIPO_REPARTO,NRO_PLANILLA_QM)',
'        VALUES (:P_COD_EMPRESA,nvl(:P31_FECHA_ALTA_PLANILLA,sysdate),:P_COD_SUCURSAL,:P31_NRO_PLANILLA,:P31_FEC_PLANILLA,:P31_FEC_RENDICION,:P31_FEC_RENDICION_ORIG,:P31_COD_ZONA_REPARTO,:P31_COD_REPARTIDOR,:P31_COD_VEHICULO,:P_COD_USUARIO,:P31_ESTADO'
||'1,:P31_KM_SALIDA,:P31_KM_ESTIMADO,:P31_KM_LLEGADA,:P31_COMENTARIO,:P31_HORA_ALTA,:P31_COD_REPARTIDOR_MM,:P31_COD_USUARIO_RENDICION,:P31_NRO_PEDIDO,:P31_COD_AYUDANTE_1,:P31_COD_AYUDANTE_2,:P31_COD_PUNTEADOR,:P31_MONTO_VIATICO,:P31_COSTO_FLETE,:P31_FEC'
||'HA_LLEGADA,:P31_FECHA_SALIDA,:P31_PORCENTAJE_COSTO,:P31_COD_AYUDANTE_3,:P31_FEC_REGRESO,:P31_SER_PLANILLA,:P31_COD_USUARIO_RECEPCION,:P31_FEC_RECEPCION,:P31_FEC_ACTUALIZACION,:P31_DESTINO,:P31_FECHA_AUTORIZA,:P31_COD_USUARIO_AUTORIZA,:P31_COD_USUARIO'
||'_GASTO,:P31_TARIFA_GS_KM,:P31_NRO_PLANILLA_CPH,:P31_FECHA_RECEPCION_PLANILLA,:P31_COD_USUARIO_RECEPCION,:P31_TIPO_REPARTO,:P31_NRO_PLANILLA_QM);',
'        ',
'        commit;',
'',
'    end if;',
'END;'))
,p_attribute_02=>'P31_FEC_PLANILLA'
,p_attribute_03=>'P31_NRO_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20409541104847839)
,p_event_id=>wwv_flow_imp.id(20408316822847827)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPPLANIL.PR_EDITAR_CABECERA (  PI_NRO_PLANILLA      => :P31_NRO_PLANILLA,',
'                                    PI_FEC_PLANILLA     => :P31_FEC_PLANILLA,',
'                                    PI_COD_ZONA_REPARTO => :P31_COD_ZONA_REPARTO,',
'                                    PI_COD_REPARTIDOR   => :P31_COD_REPARTIDOR,',
'                                    PI_COD_VEHICULO     => :P31_COD_VEHICULO,',
'                                    PI_KM_SALIDA        => :P31_KM_SALIDA,',
'                                    PI_KM_ESTIMADO      => :P31_KM_ESTIMADO,',
'                                    PI_KM_LLEGADA       => :P31_KM_LLEGADA,',
'                                    PI_COMENTARIO       => :P31_COMENTARIO,',
'                                    PI_COD_REPARTIDOR_MM => :P31_COD_REPARTIDOR_MM,',
'                                    PI_NRO_PEDIDO       => :P31_NRO_PEDIDO,',
'                                    PI_COD_AYUDANTE_1   => :P31_COD_AYUDANTE_1,',
'                                    PI_COD_AYUDANTE_2   => :P31_COD_AYUDANTE_2,        ',
'                                    PI_COD_AYUDANTE_3   => :P31_COD_AYUDANTE_3,',
'                                    PI_COD_PUNTEADOR    => :P31_COD_PUNTEADOR,',
'                                    PI_FECHA_LLEGADA    => :P31_FECHA_LLEGADA,',
'                                    PI_FECHA_SALIDA     => :P31_FECHA_SALIDA,',
'                                    PI_FEC_REGRESO      => :P31_FEC_REGRESO,',
'                                    PI_TARIFA_GS_KM     => :P31_TARIFA_GS_KM,',
'                                    PI_NRO_PLANILLA_CPH => :P31_NRO_PLANILLA_CPH,',
'                                    PI_NRO_PLANILLA_QM  => :P31_NRO_PLANILLA_QM);',
'                                    ',
'    --guardo en base los cambios de la coleccion',
'    RPPLANIL.PR_GUARDAR_DETALLE(:P31_NRO_PLANILLA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P31_NRO_PLANILLA, P31_FEC_PLANILLA, P31_COD_ZONA_REPARTO, P31_COD_REPARTIDOR, P31_COD_VEHICULO, P31_KM_SALIDA, P31_KM_ESTIMADO, P31_KM_LLEGADA, P31_COMENTARIO,  P31_COD_REPARTIDOR_MM, P31_NRO_PEDIDO, P31_COD_AYUDANTE_1, P31_COD_AYUDANTE_2,         P3'
||'1_COD_AYUDANTE_3, P31_COD_PUNTEADOR, P31_FECHA_LLEGADA, P31_FECHA_SALIDA, P31_FEC_REGRESO, P31_TARIFA_GS_KM, P31_NRO_PLANILLA_CPH, P31_NRO_PLANILLA_QM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P31_AUX_CONFIRMAR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69277102393709701)
,p_name=>'New'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_COD_REPARTIDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69277229939709702)
,p_event_id=>wwv_flow_imp.id(69277102393709701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P31_COD_REPARTIDOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69277308473709703)
,p_event_id=>wwv_flow_imp.id(69277102393709701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_COD_VEHICULO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69277488974709704)
,p_name=>'New_1'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14503783685277217)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69277515728709705)
,p_event_id=>wwv_flow_imp.id(69277488974709704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P31_EMPRESA_ORIGEN :=''NGO'';',
':P31_ENTREGA:=''ENTREGA'';',
':P31_TIP_COMPROBANTE:=''FCR'';'))
,p_attribute_03=>'P31_EMPRESA_ORIGEN,P31_ENTREGA,P31_TIP_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69277734904709707)
,p_event_id=>wwv_flow_imp.id(69277488974709704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_EMPRESA_ORIGEN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69278156842709711)
,p_name=>'New_2'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14503783685277217)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69278344990709713)
,p_event_id=>wwv_flow_imp.id(69278156842709711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_EMPRESA_ORIGEN,P31_ENTREGA,P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE,P31_CLIENTE,P31_MONEDA,P31_IMPORTE,P31_VOLUMEN,P31_ESTADO1,P31_ORDEN_ENTREGA,P31_OBSE,P31_OBSE_REENVIO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'null;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74239049848127902)
,p_name=>'New_3'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_AUX_CONFIRMAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74239129023127903)
,p_event_id=>wwv_flow_imp.id(74239049848127902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P31_AUX_CONFIRMAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74239344150127905)
,p_name=>'da_comprobante_entrega'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76654545305945319)
,p_event_id=>wwv_flow_imp.id(74239344150127905)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cli.COD_CLIENTE||'' - ''||pers.NOMBRE D, ',
'	   cli.COD_CLIENTE R',
'  FROM CC_CLIENTES cli, ',
'       PERSONAS pers,',
'       vt_comprobantes_cabecera cc',
' WHERE cli.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND cli.COD_PERSONA = pers.COD_PERSONA ',
'   and cc.cod_cliente=cli.cod_cliente',
'   and cc.COD_EMPRESA =:P_COD_EMPRESA ',
'   and cc.tip_comprobante= :P31_TIP_COMPROBANTE',
'   and cc.ser_comprobante=:P31_SER_COMPROBANTE',
'   and nro_comprobante=:P31_NRO_COMPROBANTE',
' ORDER BY pers.NOMBRE;'))
,p_attribute_07=>'P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76654614376945320)
,p_event_id=>wwv_flow_imp.id(74239344150127905)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_MONEDA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda',
'from vt_comprobantes_cabecera f',
'where  f.tip_comprobante = :P31_TIP_COMPROBANTE',
'and f.ser_comprobante = :P31_SER_COMPROBANTE',
'and f.nro_comprobante = :P31_NRO_COMPROBANTE ',
'AND F.COD_EMPRESA = :P_COD_EMPRESA;'))
,p_attribute_07=>'P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76654956561945323)
,p_event_id=>wwv_flow_imp.id(74239344150127905)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_IMPORTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tot_comprobante',
'from vt_comprobantes_cabecera f',
'where  f.tip_comprobante = :P31_TIP_COMPROBANTE',
'and f.ser_comprobante = :P31_SER_COMPROBANTE',
'and f.nro_comprobante = :P31_NRO_COMPROBANTE ',
'AND F.COD_EMPRESA = :P_COD_EMPRESA;'))
,p_attribute_07=>'P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76655036482945324)
,p_event_id=>wwv_flow_imp.id(74239344150127905)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_ESTADO1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(ESTADO)',
'from vt_comprobantes_cabecera f',
'where  f.tip_comprobante = :P31_TIP_COMPROBANTE',
'and f.ser_comprobante = :P31_SER_COMPROBANTE',
'and f.nro_comprobante = :P31_NRO_COMPROBANTE',
'and f.cod_empresa = :P_COD_EMPRESA;'))
,p_attribute_07=>'P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1087560557567088526)
,p_event_id=>wwv_flow_imp.id(74239344150127905)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vestado_out varchar2(400);',
'vnombre_out varchar2(400);',
'vmoneda_out varchar2(400);',
'vtot_guaranies_out number;',
'vtot_dolares_out number;',
' vmensaje_out varchar2(4000);',
' vtitulo_out varchar2(4000);',
' vobservacion_out varchar2(4000);',
'begin',
'if :P31_EMPRESA_ORIGEN=''NGO'' THEN',
'  -- Call the procedure',
'  inv.RPPLANIL.PR_COMPROBANTE_NGO(PI_NRO_COMPROBANTE => :P31_NRO_COMPROBANTE,',
'                                  PI_TIP_COMPROBANTE => :P31_TIP_COMPROBANTE,',
'                                  PI_SER_COMPROBANTE => :P31_SER_COMPROBANTE,',
'                                  PI_NOTA_REMISION => null,--:PI_NOTA_REMISION,',
'                                  PI_TIPO_ENTREGA => :P31_ENTREGA,',
'                                  PI_SOL_NO_CONF => null,--:PI_SOL_NO_CONF,',
'                                  PI_EMPRESA_ORIGEN => :P31_EMPRESA_ORIGEN,',
'                                  PI_NRO_PLANILLA => :P31_NRO_PLANILLA,',
'                                  PI_COD_CLIENTE => NULL,--:PI_COD_CLIENTE,',
'                                  PI_ESTADO => :P31_ESTADO1,',
'                                  PO_ESTADO => vestado_out,---:PO_ESTADO,',
'                                  PI_COD_MONEDA_BASE =>null,-- :PI_COD_MONEDA_BASE,',
'                                  pi_tot_guaranies => null,--:pi_tot_guaranies,',
'                                  pi_tot_dolares => null,--:pi_tot_dolares,',
'                                  po_nombre_cliente => vnombre_out,',
'                                  po_cod_cliente => :p31_cliente,',
'                                  po_moneda => vmoneda_out,',
'                                  po_cod_moneda => :P31_MONEDA,',
'                                  po_importe => :P31_IMPORTE,',
'                                  po_volumen => :P31_VOLUMEN,',
'                                  PO_TOT_GUARANIES => vtot_guaranies_out,',
'                                  po_tot_dolares => vtot_dolares_out,',
'                                  po_msj => vmensaje_out,',
'                                  po_titulo => vtitulo_out,',
'                                  po_observacion => vobservacion_out);                   ',
'END IF;                                  ',
'end;',
'',
''))
,p_attribute_02=>'P31_EMPRESA_ORIGEN,P31_ENTREGA,P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE,P31_ESTADO1'
,p_attribute_03=>'P31_MONEDA,P31_CLIENTE,P31_IMPORTE,P31_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P31_EMPRESA_ORIGEN'
,p_client_condition_expression=>'NGO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1087560654671088527)
,p_event_id=>wwv_flow_imp.id(74239344150127905)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vestado_out varchar2(400);',
'vnombre_out varchar2(400);',
'vmoneda_out varchar2(400);',
'vtot_guaranies_out number;',
'vtot_dolares_out number;',
' vmensaje_out varchar2(4000);',
' vtitulo_out varchar2(4000);',
' vobservacion_out varchar2(4000);',
'begin',
'if :P31_EMPRESA_ORIGEN=''CPH'' THEN',
'  -- Call the procedure',
'  inv.RPPLANIL.PR_COMPROBANTE_CPH(PI_NRO_COMPROBANTE => :P31_NRO_COMPROBANTE,',
'                                  PI_TIP_COMPROBANTE => :P31_TIP_COMPROBANTE,',
'                                  PI_SER_COMPROBANTE => :P31_SER_COMPROBANTE,',
'                                  PI_NOTA_REMISION => null,--:PI_NOTA_REMISION,',
'                                  PI_TIPO_ENTREGA => :P31_ENTREGA,',
'                                  PI_SOL_NO_CONF => null,--:PI_SOL_NO_CONF,',
'                                  PI_EMPRESA_ORIGEN => :P31_EMPRESA_ORIGEN,',
'                                  PI_NRO_PLANILLA => :P31_NRO_PLANILLA,',
'                                --  PI_COD_CLIENTE => NULL,--:PI_COD_CLIENTE,',
'                                  PI_ESTADO => :P31_ESTADO1,',
'                                  PO_ESTADO => vestado_out,---:PO_ESTADO,',
'                                  PI_COD_MONEDA_BASE =>null,-- :PI_COD_MONEDA_BASE,',
'                                  pi_tot_guaranies => null,--:pi_tot_guaranies,',
'                                  pi_tot_dolares => null,--:pi_tot_dolares,',
'                                  po_nombre_cliente => vnombre_out,',
'                                  po_cod_cliente => :p31_cliente,',
'                                  po_moneda => vmoneda_out,',
'                                  po_cod_moneda => :P31_MONEDA,',
'                                  po_importe => :P31_IMPORTE,',
'                                  po_volumen => :P31_VOLUMEN,',
'                                  PO_TOT_GUARANIES => vtot_guaranies_out,',
'                                  po_tot_dolares => vtot_dolares_out,',
'                                  po_msj => vmensaje_out,',
'                                  po_titulo => vtitulo_out,',
'                                  po_observacion => vobservacion_out);                   ',
'END IF;                                  ',
'end;',
' '))
,p_attribute_02=>'P31_EMPRESA_ORIGEN,P31_ENTREGA,P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE,P31_ESTADO1'
,p_attribute_03=>'P31_MONEDA,P31_CLIENTE,P31_IMPORTE,P31_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P31_EMPRESA_ORIGEN'
,p_client_condition_expression=>'CPH'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1087560748800088528)
,p_event_id=>wwv_flow_imp.id(74239344150127905)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vestado_out varchar2(400);',
'vnombre_out varchar2(400);',
'vmoneda_out varchar2(400);',
'vtot_guaranies_out number;',
'vtot_dolares_out number;',
' vmensaje_out varchar2(4000);',
' vtitulo_out varchar2(4000);',
' vobservacion_out varchar2(4000);',
'begin',
'if :P31_EMPRESA_ORIGEN=''BH'' THEN',
'  -- Call the procedure',
'  inv.RPPLANIL.PR_COMPROBANTE_BH(PI_NRO_COMPROBANTE => :P31_NRO_COMPROBANTE,',
'                                  PI_TIP_COMPROBANTE => :P31_TIP_COMPROBANTE,',
'                                  PI_SER_COMPROBANTE => :P31_SER_COMPROBANTE,',
'                                  PI_NOTA_REMISION => null,--:PI_NOTA_REMISION,',
'                                  PI_TIPO_ENTREGA => :P31_ENTREGA,',
'                                  PI_SOL_NO_CONF => null,--:PI_SOL_NO_CONF,',
'                                  PI_EMPRESA_ORIGEN => :P31_EMPRESA_ORIGEN,',
'                                  PI_NRO_PLANILLA => :P31_NRO_PLANILLA,',
'                                  PI_COD_CLIENTE => NULL,--:PI_COD_CLIENTE,',
'                                  PI_ESTADO => :P31_ESTADO1,',
'                                  PO_ESTADO => vestado_out,---:PO_ESTADO,',
'                                  PI_COD_MONEDA_BASE =>null,-- :PI_COD_MONEDA_BASE,',
'                                  pi_tot_guaranies => null,--:pi_tot_guaranies,',
'                                  pi_tot_dolares => null,--:pi_tot_dolares,',
'                                  po_nombre_cliente => vnombre_out,',
'                                  po_cod_cliente => :p31_cliente,',
'                                  po_moneda => vmoneda_out,',
'                                  po_cod_moneda => :P31_MONEDA,',
'                                  po_importe => :P31_IMPORTE,',
'                                  po_volumen => :P31_VOLUMEN,',
'                                  PO_TOT_GUARANIES => vtot_guaranies_out,',
'                                  po_tot_dolares => vtot_dolares_out,',
'                                  po_msj => vmensaje_out,',
'                                  po_titulo => vtitulo_out,',
'                                  po_observacion => vobservacion_out);                   ',
'END IF;                                  ',
'end;',
'',
''))
,p_attribute_02=>'P31_EMPRESA_ORIGEN,P31_ENTREGA,P31_TIP_COMPROBANTE,P31_SER_COMPROBANTE,P31_NRO_COMPROBANTE,P31_ESTADO1'
,p_attribute_03=>'P31_MONEDA,P31_CLIENTE,P31_IMPORTE,P31_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P31_EMPRESA_ORIGEN'
,p_client_condition_expression=>'BH'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74239477335127906)
,p_event_id=>wwv_flow_imp.id(74239344150127905)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P31_CLIENTE,P31_MONEDA,P31_ESTADO1,P31_IMPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1087558569411088506)
,p_name=>'da_enviar_adaia'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1087558139095088502)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1087558688227088507)
,p_event_id=>wwv_flow_imp.id(1087558569411088506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P31_FECHA_CONFIRMACION_PREPA:=TO_CHAR(SYSDATE, ''DD/MM/YYYY HH24:MI:SS'');',
':P31_COD_USUARIO_CONFIRMA := :APP_USER;',
':P31_IND_CONFIRMA_PREPARACION :=''S'';',
'end;'))
,p_attribute_03=>'P31_FECHA_CONFIRMACION_PREPA,P31_COD_USUARIO_CONFIRMA,P31_IND_CONFIRMA_PREPARACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1087561226273088533)
,p_name=>'New_4'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P31_ESTADO_CHECK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1087561320333088534)
,p_event_id=>wwv_flow_imp.id(1087561226273088533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P31_ESTADO_CHECK=''R'' THEN',
'BEGIN',
':P31_FEC_RENDICION:=sysdate;',
'END;',
'END IF;'))
,p_attribute_02=>'P31_ESTADO_CHECK'
,p_attribute_03=>'P31_FEC_RENDICION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13978698481793523)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_DETALLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPPLANIL.PR_CARGAR_COL_RPPLANIL( PI_NRO_PLANILLA => :P31_NRO_PLANILLA,',
'                                     PI_NOTA_REMISION => :P31_NOTA_REMISION,',
'                                     PI_COD_MONEDA_BASE => :P31_COD_MONEDA_BASE,',
'                                     PI_SOL_NO_CONF => :P31_SOL_NO_CONF,',
'                                     PO_TOT_DOLAR   =>  :P31_TOT_DOLARES  ,',
'                                     PO_TOT_GUARANIES  => :P31_TOT_GUARANIES,',
'                                     PO_TOT_VOL  => :P31_TOT_VOLUMEN );',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P31_NRO_PLANILLA'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13585083316579337)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_CABECERA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_SUCURSAL,',
'       NRO_PLANILLA,',
'       nvl(FEC_PLANILLA,sysdate),',
'       FEC_RENDICION,',
'       FEC_RENDICION_ORIG,',
'       COD_ZONA_REPARTO,',
'       COD_REPARTIDOR,',
'       COD_VEHICULO,',
'       COD_USUARIO,',
'       ESTADO,',
'       KM_SALIDA,',
'       KM_ESTIMADO,',
'       KM_LLEGADA,',
'       COMENTARIO,',
'       HORA_ALTA,',
'       COD_REPARTIDOR_MM,',
'       COD_USUARIO_RENDICION,',
'       NRO_PEDIDO,',
'       COD_AYUDANTE_1,',
'       COD_AYUDANTE_2,',
'       COD_PUNTEADOR,',
'       MONTO_VIATICO,',
'       COSTO_FLETE,',
'       FECHA_LLEGADA,',
'       FECHA_SALIDA,',
'       PORCENTAJE_COSTO,',
'       COD_AYUDANTE_3,',
'       FEC_REGRESO,',
'       SER_PLANILLA,',
'       COD_USUARIO_RECEPCION,',
'       FEC_RECEPCION,',
'       FEC_ACTUALIZACION,',
'       DESTINO,',
'       FECHA_AUTORIZA,',
'       COD_USUARIO_AUTORIZA,',
'       COD_USUARIO_GASTO,',
'       TARIFA_GS_KM,',
'       NRO_PLANILLA_CPH,',
'       FECHA_RECEPCION_PLANILLA,',
'       CODIGO_USUARIO_RECEPCION,',
'       TIPO_REPARTO,',
'       FECHA_ALTA_PLANILLA,',
'       NRO_PLANILLA_QM,ind_confirmar_preparacion,fecha_confirmacion_preparacion,cod_usuario_confirma',
'  into :P_COD_EMPRESA,',
'       :P31_COD_SUCURSAL,',
'       :P31_NRO_PLANILLA,',
'       :P31_FEC_PLANILLA,',
'       :P31_FEC_RENDICION,',
'       :P31_FEC_RENDICION_ORIG,',
'       :P31_COD_ZONA_REPARTO,',
'       :P31_COD_REPARTIDOR,',
'       :P31_COD_VEHICULO,',
'       :P31_COD_USUARIO,',
'       :P31_ESTADO_CHECK,',
'       :P31_KM_SALIDA,',
'       :P31_KM_ESTIMADO,',
'       :P31_KM_LLEGADA,',
'       :P31_COMENTARIO,',
'       :P31_HORA_ALTA,',
'       :P31_COD_REPARTIDOR_MM,',
'       :P31_COD_USUARIO_RENDICION,',
'       :P31_NRO_PEDIDO,',
'       :P31_COD_AYUDANTE_1,',
'       :P31_COD_AYUDANTE_2,',
'       :P31_COD_PUNTEADOR,',
'       :P31_MONTO_VIATICO,',
'       :P31_COSTO_FLETE,',
'       :P31_FECHA_LLEGADA,',
'       :P31_FECHA_SALIDA,',
'       :P31_PORCENTAJE_COSTO,',
'       :P31_COD_AYUDANTE_3,',
'       :P31_FEC_REGRESO,',
'       :P31_SER_PLANILLA,',
'       :P31_COD_USUARIO_RECEPCION,',
'       :P31_FEC_RECEPCION,',
'       :P31_FEC_ACTUALIZACION,',
'       :P31_DESTINO,',
'       :P31_FECHA_AUTORIZA,',
'       :P31_COD_USUARIO_AUTORIZA,',
'       :P31_COD_USUARIO_GASTO,',
'       :P31_TARIFA_GS_KM,',
'       :P31_NRO_PLANILLA_CPH,',
'       :P31_FECHA_RECEPCION_PLANILLA,',
'       :P31_CODIGO_USUARIO_RECEPCION,',
'       :P31_TIPO_REPARTO,',
'       :P31_FECHA_ALTA_PLANILLA,',
'       :P31_NRO_PLANILLA_QM,:P31_IND_CONFIRMA_PREPARACION,:P31_FECHA_CONFIRMACION_PREPA,:P31_COD_USUARIO_CONFIRMA',
'  from RP_REPARTO_CABECERA',
' where cod_empresa = :P_COD_EMPRESA',
'   and nro_planilla = :P31_NRO_PLANILLA;',
'',
'',
'   :P_COD_SUCURSAL := :P31_COD_SUCURSAL;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P31_NRO_PLANILLA'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14066219753863708)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGA_PARAMETROS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P31_NOTA_REMISION := f_busca_parametro(pcod_modulo => :P_COD_MODULO,',
'                                            pparametro => ''TIPO_REMISION''); ',
'',
'    :P31_COD_MONEDA_BASE := f_busca_parametro(pcod_modulo => :P_COD_MODULO,',
'                                              pparametro => ''COD_MONEDA_BASE''); ',
'                                              ',
'    :P31_SOL_NO_CONF := f_busca_parametro(pcod_modulo => :P_COD_MODULO,',
'                                           pparametro => ''TIPO_SOLNOCONF''); ',
'',
'    :P31_FAC_CONTADO := f_busca_parametro(pcod_modulo => :P_COD_MODULO,',
'                                           pparametro => ''TIPO_CONTADO''); ',
'',
'    :P31_FAC_CREDITO := f_busca_parametro(pcod_modulo => :P_COD_MODULO,',
'                                           pparametro => ''TIPO_CREDITO''); ',
'EXCEPTION   ',
'    WHEN OTHERS THEN    ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'BEGIN ',
'    SELECT UPPER(NOMB) || '' '' || UPPER(APEL)',
'    INTO :P31_CODIGO_USUARIO_RECEPCION ',
'    FROM ASP$USUA0100',
'    WHERE ID = :P_USUA0100_ID;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P31_CODIGO_USUARIO_RECEPCION := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14069739584863843)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_LIMPIAR_DETALLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DET_RPPLANIL'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P31_NRO_PLANILLA'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7708916157151313)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CARGAR_TIEMPOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RPPLANIL.PR_CARGAR_REG_TIEMPOS(P_NRO_PLANILLA => :P31_NRO_PLANILLA,',
'                                   P_COD_EMPRESA  => :P31_COD_EMPRESA );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8738788150197939)
,p_process_sequence=>70
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_KM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    	SELECT NRO_COMPROBANTE,',
'			   SER_COMPROBANTE',
'	     INTO :P31_VNRO_VALE,',
'	  	      :P31_VSER_VALE',
'	    FROM CP_VALES ',
'	  WHERE COD_EMPRESA  = :P_COD_EMPRESA',
'	   AND NRO_PLANILLA = :P31_NRO_PLANILLA;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P31_VNRO_VALE :=	NULL;',
'		:P31_VSER_VALE :=	NULL;',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9706182324340632)
,p_process_sequence=>80
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P31_modifica_planilla := busca_permiso( :P_COD_EMPRESA,',
'                                             ''RPPLANIL'',',
'                                             :P_USUA0100_ID,',
'                                             ''MODIFICA_PLANILLA'' );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;',
'',
'BEGIN',
'    :P31_CAMBIA_INI_FIN:= busca_permiso( :P_COD_EMPRESA,',
'                                         ''RPPLANIL'',',
'                                         :P_USUA0100_ID,',
'                                         ''CAMBIA_INI_FIN_TIEMP_REP'' );',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;',
'',
'',
'                                        '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10077144570914924)
,p_process_sequence=>90
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMIAR_CABECERA'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P31_NRO_PLANILLA'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10077377610914926)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_LIMPIAR_PLANILLA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P31_NRO_PLANILLA := NULL;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10076245289914915)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69280075934709730)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69278613274709716)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Tiempo Reparto - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1087560827335088529)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'guarda_planilla'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VNRO_PLANILLA NUMBER;',
'begin ',
'DECLARE ',
'    VCONTROLA VARCHAR2(1):=''N''; ',
'    VENTREGA VARCHAR(20);',
'BEGIN ',
'    :P31_AUX_CONFIRMAR := 2;',
'    BEGIN',
'        SELECT C021 TIPO_ENTREGA',
'          INTO VENTREGA',
'          FROM APEX_COLLECTIONS',
'         WHERE collection_name = ''COL_DET_RPPLANIL''',
'           AND SEQ_ID = 1;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            VENTREGA := NULL;',
'    END;        ',
'',
'    IF :P31_NRO_PLANILLA IS NOT NULL AND :P31_FECHA_RECEPCION_PLANILLA IS  NULL  AND VENTREGA <> ''ENTREGA'' THEN ',
'        :P31_FECHA_RECEPCION_PLANILLA:=SYSDATE;',
'        :P31_CODIGO_USUARIO_RECEPCION:= :P_COD_USUARIO; ',
'        :P31_AUX_CONFIRMAR := 1;--COMMIT; ',
'    ELSE ',
'        BEGIN ',
'            select DISTINCT ''S'' ',
'              into VCONTROLA  ',
'              FROM sucursal_zona z',
'             WHERE  COD_SUCURSAL = :P31_COD_SUCURSAL',
'               AND z.cod_zona_suc IN (''SL'');',
'        EXCEPTION ',
'            WHEN  OTHERS THEN ',
'                VCONTROLA    := ''N'' ; ',
'        END;     ',
'        IF   VCONTROLA   = ''N''  THEN ',
'            :P31_FECHA_RECEPCION_PLANILLA:=SYSDATE;',
'            :P31_CODIGO_USUARIO_RECEPCION:= :P_COD_USUARIO;',
'        :P31_AUX_CONFIRMAR := 1;--COMMIT;            	',
'        ELSE ',
'            declare ',
'                vexiste_celda_VACIA varchar2(1):= ''N'';',
'                V_EXISTE_SUC varchar2(1):= ''N'';',
'            begin ',
'                BEGIN  ',
'                    select ''S''',
'                      INTO   V_EXISTE_SUC',
'                      from RP_REPARTO_TIEMPOS T',
'                     WHERE T.COD_EMPRESA = :P_COD_EMPRESA--:P31_COD_EMPRESA',
'                       AND T.NRO_PLANILLA = :P31_NRO_PLANILLA',
'                       AND ROWNUM = ''1'';',
'                EXCEPTION ',
'                    WHEN OTHERS THEN ',
'                        V_EXISTE_SUC:=  ''N''; ',
'                END; ',
'                IF   V_EXISTE_SUC =  ''S'' THEN ',
'                    begin',
'                        select ''S''',
'                          INTO   vexiste_celda_vacia ',
'                          from RP_REPARTO_TIEMPOS T',
'                         WHERE T.COD_EMPRESA = :P_COD_EMPRESA--:P31_COD_EMPRESA',
'                           AND T.NRO_PLANILLA = :P31_NRO_PLANILLA',
'                           AND T.COD_POSICION_CELDA IS NULL ',
'                           AND ROWNUM = ''1'';',
'                    exception ',
'                        when no_data_found then ',
'                            vexiste_celda_vacia :=  ''N'' ; ',
'                        when others then ',
'                            RAISE_APPLICATION_ERROR(-20000,''Error al seleccionar Celda ''||sqlerrm);	   ',
'                    end;',
'                    if  vexiste_celda_VACIA  =''S'' then ',
'                    ---mensaje_ex(''Complete todas las celdas para confirmar '');	',
'                    -- raise form_trigger_failure;                    ',
'                    :P31_FECHA_RECEPCION_PLANILLA:=SYSDATE;',
'                    :P31_CODIGO_USUARIO_RECEPCION:= :P_COD_USUARIO;',
'                    :P31_AUX_CONFIRMAR := 1;--COMMIT; ',
'                    ELSE ',
'                        :P31_FECHA_RECEPCION_PLANILLA:=SYSDATE;',
'                        :P31_CODIGO_USUARIO_RECEPCION:= :P_COD_USUARIO; ',
'                        :P31_AUX_CONFIRMAR := 1;--COMMIT;  ',
'                    end if; ',
'',
'                ELSE ',
'                    RAISE_APPLICATION_ERROR(-20000,''Favor complete la seccion de tiempos con las sucursales y celdas correspondientes para confirmar la planilla '');	  ',
'                end if; ',
'            end;',
'        END IF;',
'    end if; ',
'END;',
'',
'',
' ',
'BEGIN',
'    ',
'    ',
'    select nvl( max( nro_planilla ), 0 ) + 1 into VNRO_PLANILLA',
'      from rp_reparto_cabecera',
'where  nro_planilla<3195960',
'AND COD_EMPRESA=:P_COD_EMPRESA;',
'',
'        INSERT INTO RP_REPARTO_CABECERA (COD_EMPRESA,FECHA_ALTA_PLANILLA,COD_SUCURSAL,NRO_PLANILLA,FEC_PLANILLA,FEC_RENDICION,FEC_RENDICION_ORIG,COD_ZONA_REPARTO,',
'        COD_REPARTIDOR,COD_VEHICULO,COD_USUARIO,ESTADO,KM_SALIDA,KM_ESTIMADO,KM_LLEGADA,COMENTARIO,HORA_ALTA,COD_REPARTIDOR_MM,',
'        COD_USUARIO_RENDICION,NRO_PEDIDO,COD_AYUDANTE_1,COD_AYUDANTE_2,COD_PUNTEADOR,MONTO_VIATICO,COSTO_FLETE,FECHA_LLEGADA,FECHA_SALIDA,',
'        PORCENTAJE_COSTO,COD_AYUDANTE_3,FEC_REGRESO,SER_PLANILLA,COD_USUARIO_RECEPCION,FEC_RECEPCION,FEC_ACTUALIZACION,DESTINO,',
'        FECHA_AUTORIZA,COD_USUARIO_AUTORIZA,COD_USUARIO_GASTO,TARIFA_GS_KM,NRO_PLANILLA_CPH,FECHA_RECEPCION_PLANILLA,CODIGO_USUARIO_RECEPCION,TIPO_REPARTO,NRO_PLANILLA_QM,',
'        IND_REPARTO_NOCTURNO)',
'',
'        VALUES (:P_COD_EMPRESA,nvl(:P31_FECHA_ALTA_PLANILLA,sysdate),:P31_COD_SUCURSAL,VNRO_PLANILLA,:P31_FEC_PLANILLA,:P31_FEC_RENDICION,:P31_FEC_RENDICION_ORIG,:P31_COD_ZONA_REPARTO,',
'        :P31_COD_REPARTIDOR,:P31_COD_VEHICULO,:P_COD_USUARIO,nvl(:P31_ESTADO_CHECK,''P''),:P31_KM_SALIDA,:P31_KM_ESTIMADO,:P31_KM_LLEGADA,:P31_COMENTARIO,:P31_HORA_ALTA,:P31_COD_REPARTIDOR_MM,',
'        :P31_COD_USUARIO_RENDICION,:P31_NRO_PEDIDO,:P31_COD_AYUDANTE_1,:P31_COD_AYUDANTE_2,:P31_COD_PUNTEADOR,:P31_MONTO_VIATICO,:P31_COSTO_FLETE,:P31_FECHA_LLEGADA,',
'        :P31_FECHA_SALIDA,:P31_PORCENTAJE_COSTO,:P31_COD_AYUDANTE_3,:P31_FEC_REGRESO,:P31_SER_PLANILLA,:P31_COD_USUARIO_RECEPCION,:P31_FEC_RECEPCION,:P31_FEC_ACTUALIZACION,:P31_DESTINO,',
'        :P31_FECHA_AUTORIZA,:P31_COD_USUARIO_AUTORIZA,:P31_COD_USUARIO_GASTO,:P31_TARIFA_GS_KM,:P31_NRO_PLANILLA_CPH,:P31_FECHA_RECEPCION_PLANILLA,:P31_COD_USUARIO_RECEPCION,:P31_TIPO_REPARTO,:P31_NRO_PLANILLA_QM,',
'        :P31_IND_NOCTURNO);',
'        ',
'        commit;',
' :P31_NRO_PLANILLA:= VNRO_PLANILLA;',
'     ',
'END;',
'',
'BEGIN',
'   /* RPPLANIL.PR_EDITAR_CABECERA (  PI_NRO_PLANILLA      => :P31_NRO_PLANILLA,',
'                                    PI_FEC_PLANILLA     => :P31_FEC_PLANILLA,',
'                                    PI_COD_ZONA_REPARTO => :P31_COD_ZONA_REPARTO,',
'                                    PI_COD_REPARTIDOR   => :P31_COD_REPARTIDOR,',
'                                    PI_COD_VEHICULO     => :P31_COD_VEHICULO,',
'                                    PI_KM_SALIDA        => :P31_KM_SALIDA,',
'                                    PI_KM_ESTIMADO      => :P31_KM_ESTIMADO,',
'                                    PI_KM_LLEGADA       => :P31_KM_LLEGADA,',
'                                    PI_COMENTARIO       => :P31_COMENTARIO,',
'                                    PI_COD_REPARTIDOR_MM => :P31_COD_REPARTIDOR_MM,',
'                                    PI_NRO_PEDIDO       => :P31_NRO_PEDIDO,',
'                                    PI_COD_AYUDANTE_1   => :P31_COD_AYUDANTE_1,',
'                                    PI_COD_AYUDANTE_2   => :P31_COD_AYUDANTE_2,        ',
'                                    PI_COD_AYUDANTE_3   => :P31_COD_AYUDANTE_3,',
'                                    PI_COD_PUNTEADOR    => :P31_COD_PUNTEADOR,',
'                                    PI_FECHA_LLEGADA    => :P31_FECHA_LLEGADA,',
'                                    PI_FECHA_SALIDA     => :P31_FECHA_SALIDA,',
'                                    PI_FEC_REGRESO      => :P31_FEC_REGRESO,',
'                                    PI_TARIFA_GS_KM     => :P31_TARIFA_GS_KM,',
'                                    PI_NRO_PLANILLA_CPH => :P31_NRO_PLANILLA_CPH,',
'                                    PI_NRO_PLANILLA_QM  => :P31_NRO_PLANILLA_QM,',
'                                    PI_IND_CONFIRMAR_PREPARACION  => :P31_IND_CONFIRMA_PREPARACION,',
'                                    PI_COD_USUARIO_CONFIRMA  => :P31_COD_USUARIO_CONFIRMA,',
'                                    PI_FECHA_CONFIRMACION_ADAIA  => :P31_FECHA_CONFIRMACION_PREPA);*/',
'                                   ',
'',
'    RPPLANIL.PR_GUARDAR_DETALLE(vnro_planilla);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;',
'',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10075810208914911)
,p_process_success_message=>'Los datos se guardaron exitosamente - &P31_NRO_PLANILLA.'
);
wwv_flow_imp.component_end;
end;
/
