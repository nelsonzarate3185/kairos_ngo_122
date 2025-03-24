prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Gastos'
,p_alias=>'GASTOS1'
,p_step_title=>'Gastos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20220926123804'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71718587054009636)
,p_plug_name=>'Gastos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       REGID,',
'       ID_VOUCHER,',
'       ID_WALLET,',
'       COD_DEPARTAMENTO,',
'       COD_CIUDAD,',
'       LATITUD,',
'       LONGITUD,',
'       DISTRITO,',
'       COD_PROVEEDOR,',
'       TIPO_COMPROBANTE,',
'       NUMERO_COMPROBANTE,',
'       FECHA_EMISION,',
'       MONTO,',
'       COMENTARIO,',
'       CREADO_POR,',
'       FECHA_ALTA,',
'       ACTUALIZADO_POR,',
'       FECHA_ACTUALIZACION,',
'       IND_PROCESADO,',
'       FECHA_PROCESO,',
'       P_ID_IMG,',
'       COD_EMPLEADO,',
'       P_ID_RECIBIDO,',
'       PUBLIC_ID_VOUCHER,',
'       nvl((SELECT ',
'       filename',
'        ',
'        IMAGEN',
'       FROM CP_ADJUNTO_GASTOS G',
'       WHERE G.COD_EMPRESA=C.COD_EMPRESA',
'       AND G.ID_CARGA=C.REGID',
'       and rownum=1),''SIN IMAGEN'')IMAGEN',
'       ',
'       ',
'      ',
'       ',
'  from CP_GASTOS_APP  C',
'where cod_empresa=''1''',
'order by fecha_alta desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Gastos'
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
 p_id=>wwv_flow_imp.id(64037116311413307)
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
,p_internal_uid=>64037116311413307
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12533466667713958)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12533884693713958)
,p_db_column_name=>'REGID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Regid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12534256713713958)
,p_db_column_name=>'ID_VOUCHER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Voucher'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12544725044713965)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12534625774713959)
,p_db_column_name=>'ID_WALLET'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo Gasto'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12545389036713965)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12535024512713959)
,p_db_column_name=>'COD_DEPARTAMENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12535421222713959)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12535803224713959)
,p_db_column_name=>'LATITUD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Latitud'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12536258252713959)
,p_db_column_name=>'LONGITUD'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Longitud'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12536648567713959)
,p_db_column_name=>'DISTRITO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Distrito'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12537009498713960)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(7890231354376850)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12537430984713960)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12537891459713960)
,p_db_column_name=>'NUMERO_COMPROBANTE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Numero Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12538299088713960)
,p_db_column_name=>'FECHA_EMISION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fecha Emision'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12538618011713960)
,p_db_column_name=>'MONTO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12539001852713960)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12539473320713961)
,p_db_column_name=>'CREADO_POR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Creado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12539863703713961)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12540252958713961)
,p_db_column_name=>'ACTUALIZADO_POR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Actualizado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12540674461713961)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12541011378713961)
,p_db_column_name=>'IND_PROCESADO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Ind Procesado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12541409673713961)
,p_db_column_name=>'FECHA_PROCESO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Fecha Proceso'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12541832321713962)
,p_db_column_name=>'P_ID_IMG'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'P Id Img'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12542291560713962)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Empleado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12499741931502745)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12542630041713962)
,p_db_column_name=>'P_ID_RECIBIDO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'P Id Recibido'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12543042661713962)
,p_db_column_name=>'PUBLIC_ID_VOUCHER'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Public Id Voucher'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12543408635713963)
,p_db_column_name=>'IMAGEN'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Imagen'
,p_column_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP,57:P57_REGID:#REGID#'
,p_column_linktext=>'#IMAGEN#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(71775697341066930)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'480239'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:REGID:ID_VOUCHER:ID_WALLET:COD_DEPARTAMENTO:COD_CIUDAD:LATITUD:LONGITUD:DISTRITO:COD_PROVEEDOR:TIPO_COMPROBANTE:NUMERO_COMPROBANTE:FECHA_EMISION:MONTO:COMENTARIO:CREADO_POR:FECHA_ALTA:ACTUALIZADO_POR:FECHA_ACTUALIZACION:IND_PROCESADO:FECH'
||'A_PROCESO:P_ID_IMG:COD_EMPLEADO:P_ID_RECIBIDO:PUBLIC_ID_VOUCHER:IMAGEN'
);
wwv_flow_imp.component_end;
end;
/
