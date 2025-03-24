prompt --application/pages/page_00427
begin
--   Manifest
--     PAGE: 00427
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
 p_id=>427
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CACONVIS'
,p_alias=>'CACONVIS'
,p_step_title=>'CACONVIS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JASIS'
,p_last_upd_yyyymmddhh24miss=>'20230315111629'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126586602595454319)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126588598592454338)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126589039734454343)
,p_plug_name=>'Consulta de Visitas - CACONVIS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    COD_EMPRESA,',
'    NRO_MOVIMIENTO,',
'    TIP_COMPROBANTE,',
'    SER_COMPROBANTE,',
'    NRO_COMPROBANTE,',
'    FEC_AGENDADA,',
'    HORA_AGENDADA,',
'    FEC_CONTACTO,',
'    HORA_CONTACTO,',
'    ES_REAGENDA,',
'    COD_MOTIVO_REAGENDA,',
'    FEC_VISITA,',
'    HORA_VISITA,',
'    COORDENADAS,',
'    COD_TECNICO,',
'    CONTACTO,',
'    OBSERVACION,',
'    COD_MOTIVO_VISITA,',
'    REALIZADO,',
'    DIRECCION,',
'    COD_BARRIO,',
'    COD_CIUDAD,',
'    COD_CLIENTE,',
'    DIR_ARCHIVO,',
'    ORIGEN,',
'    COD_USUARIO_AGENDA,',
'    COD_RESULTADO,',
'    COMENTARIO_RESULTADO,',
'    COD_PROVINCIA,',
'    ID_VISITA_SF',
'FROM CA_GESTIONES_VISITAS',
'WHERE cod_empresa = :P_COD_EMPRESA',
'and (tip_comprobante = :P427_P_TIP_COMPROBANTE or :P427_P_TIP_COMPROBANTE is null)',
'and (ser_comprobante = :P427_P_SER_COMPROBANTE or :P427_P_SER_COMPROBANTE is null)',
'and (nro_comprobante = TO_NUMBER(:P427_P_NRO_COMPROBANTE) or :P427_P_NRO_COMPROBANTE is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P427_P_NRO_COMPROBANTE,P427_P_TIP_COMPROBANTE,P427_P_SER_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Consulta de Visitas - CACONVIS'
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
 p_id=>wwv_flow_imp.id(126589133364454344)
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
,p_internal_uid=>126589133364454344
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126589271935454345)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126589340966454346)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Movimiento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126589423107454347)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126589510107454348)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126589654235454349)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126589782853454350)
,p_db_column_name=>'FEC_AGENDADA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Agendada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127078369614559301)
,p_db_column_name=>'HORA_AGENDADA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Hora Agendada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127078470132559302)
,p_db_column_name=>'FEC_CONTACTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Contacto'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127078586517559303)
,p_db_column_name=>'HORA_CONTACTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Hora Contacto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127078656108559304)
,p_db_column_name=>'ES_REAGENDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Es Reagenda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127078715291559305)
,p_db_column_name=>'COD_MOTIVO_REAGENDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Motivo Reagenda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127078819604559306)
,p_db_column_name=>'FEC_VISITA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fec Visita'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127078906416559307)
,p_db_column_name=>'HORA_VISITA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Hora Visita'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127079070843559308)
,p_db_column_name=>'COORDENADAS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Coordenadas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127079183840559309)
,p_db_column_name=>'COD_TECNICO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Tecnico'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127079223551559310)
,p_db_column_name=>'CONTACTO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127079316759559311)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127079459533559312)
,p_db_column_name=>'COD_MOTIVO_VISITA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Motivo Visita'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127079581548559313)
,p_db_column_name=>'REALIZADO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Realizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127079644787559314)
,p_db_column_name=>'DIRECCION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127079713737559315)
,p_db_column_name=>'COD_BARRIO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Barrio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127079818473559316)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127079947219559317)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127080094644559318)
,p_db_column_name=>'DIR_ARCHIVO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Dir Archivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127080101198559319)
,p_db_column_name=>'ORIGEN'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127080205554559320)
,p_db_column_name=>'COD_USUARIO_AGENDA'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cod Usuario Agenda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127080388065559321)
,p_db_column_name=>'COD_RESULTADO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Cod Resultado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127080404297559322)
,p_db_column_name=>'COMENTARIO_RESULTADO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Comentario Resultado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127080542845559323)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cod Provincia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127080697361559324)
,p_db_column_name=>'ID_VISITA_SF'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Id Visita Sf'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(127093012050554255)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1270931'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_MOVIMIENTO:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_AGENDADA:HORA_AGENDADA:FEC_CONTACTO:HORA_CONTACTO:ES_REAGENDA:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126586741699454320)
,p_name=>'P427_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126586800823454321)
,p_name=>'P427_IMPORTE_ANT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126586956030454322)
,p_name=>'P427_COD_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126587087768454323)
,p_name=>'P427_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126587135289454324)
,p_name=>'P427_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126587265526454325)
,p_name=>'P427_COD_MONEDA_BASE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126587382457454326)
,p_name=>'P427_COD_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126587416856454327)
,p_name=>'P427_NOM_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126587558030454328)
,p_name=>'P427_COD_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126587667044454329)
,p_name=>'P427_NOM_SUCURSAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126587732492454330)
,p_name=>'P427_COD_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126587827164454331)
,p_name=>'P427_COD_IDIOMA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126587976818454332)
,p_name=>'P427_CODSISMENU'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126588017534454333)
,p_name=>'P427_TIPO_TRANS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126588112174454334)
,p_name=>'P427_SER_RECIBO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126588232136454335)
,p_name=>'P427_FEC_ACTUAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126588322256454336)
,p_name=>'P427_MODIFICA_FECHA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126588466330454337)
,p_name=>'P427_DIAS_ATRASO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(126586602595454319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126588675683454339)
,p_name=>'P427_P_TIP_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126588598592454338)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126588787980454340)
,p_name=>'P427_P_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126588598592454338)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126588826275454341)
,p_name=>'P427_P_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126588598592454338)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(126588988798454342)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P427_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
'    :P427_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'    :P427_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
'    :P427_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,NULL);',
'    :P427_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
'    :P427_COD_MODULO := NVL(:P_COD_MODULO,''CC'');',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
