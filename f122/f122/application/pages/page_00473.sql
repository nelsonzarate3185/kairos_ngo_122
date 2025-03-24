prompt --application/pages/page_00473
begin
--   Manifest
--     PAGE: 00473
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
 p_id=>473
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'REPORTE FLETES LIQUIDADOS -RPLIQFOK'
,p_alias=>'REPORTE-FLETES-LIQUIDADOS-RPLIQFOK'
,p_step_title=>'REPORTE FLETES LIQUIDADOS -RPLIQFOK'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230330103531'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137744874071873719)
,p_plug_name=>'Informe de Fletes Liquidados'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137743077268873701)
,p_plug_name=>'RPLIQFOK'
,p_parent_plug_id=>wwv_flow_imp.id(137744874071873719)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aa.NRO_PLANILLA,',
'       aa.fecha,',
'       aa.cod_vehiculo,',
'       aa.cod_vehiculo ||'' - ''|| vv.descripcion VEHICULO,',
'       --vv.chapa,',
'       --vv.peso_kg CAPACIDAD, ',
'       aa.cod_repartidor,',
'       aa.cod_repartidor||'' - ''||pp.nombre repartidor,',
'       --aa.valor_transito,',
'       --aa.cant_viaje,',
'       --aa.volumen,',
'       --aa.km_estimado,',
'       --aa.indice,       ',
'       --aa.monto_pago,',
'       vv.tipo transportadora',
'from rp_liquida_fletes aa, ',
'     rp_vehiculos vv',
'    , rp_repartidores rr',
'    , personas pp ',
'   where rr.cod_empresa = aa.cod_empresa',
'     and rr.cod_repartidor = aa.cod_repartidor',
'     and rr.cod_persona = pp.cod_persona',
'     and vv.cod_empresa = aa.cod_empresa',
'     and vv.cod_vehiculo = aa.cod_vehiculo',
'--and    (aa.cod_vehiculo = :P_vehiculo OR  :P_vehiculo  IS NULL)',
'--and    (aa.cod_repartidor= :P_repartidor OR  :P_repartidor IS NULL)',
'--and    (aa.NRO_PLANILLA= :P_NRO_PLANILLA OR  :P_NRO_PLANILLA IS NULL)',
'--and    (vv.tipo = :P_TRANSPORTADORA OR  :P_TRANSPORTADORA  IS NULL)',
'--and    ( aa.FECHA  >= to_date(:P_fecha_ini,''DD/MM/YYYY'') OR :P_fecha_ini IS NULL)',
'--and    ( aa.FECHA  <= to_date(:P_fecha_fin,''DD/MM/YYYY'') OR :P_fecha_fin IS NULL)',
' order by aa.FECHA desc ',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RPLIQFOK'
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
 p_id=>wwv_flow_imp.id(137743101793873702)
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
,p_internal_uid=>137743101793873702
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137743292874873703)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Planilla'
,p_column_link=>'f?p=&APP_ID.:456:&SESSION.::&DEBUG.:CR,456:P456_P_NRO_PLANILLA,P456_P_COD_VEHICULO,P456_P_COD_REPARTIDOR,P456_P_TIPO:#NRO_PLANILLA#,#COD_VEHICULO#,#COD_REPARTIDOR#,#TRANSPORTADORA#'
,p_column_linktext=>'#NRO_PLANILLA#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137743370581873704)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137743412817873705)
,p_db_column_name=>'COD_VEHICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Vehiculo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137743847028873709)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137743937576873710)
,p_db_column_name=>'REPARTIDOR'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Repartidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137744678572873717)
,p_db_column_name=>'TRANSPORTADORA'
,p_display_order=>150
,p_column_identifier=>'F'
,p_column_label=>'Transportadora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137744713594873718)
,p_db_column_name=>'VEHICULO'
,p_display_order=>160
,p_column_identifier=>'G'
,p_column_label=>'Vehiculo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(137751595601847034)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1377516'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_PLANILLA:FECHA:COD_VEHICULO:COD_REPARTIDOR:REPARTIDOR:TRANSPORTADORA:VEHICULO'
);
wwv_flow_imp.component_end;
end;
/
