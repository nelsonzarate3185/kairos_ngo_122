prompt --application/pages/page_00587
begin
--   Manifest
--     PAGE: 00587
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
 p_id=>587
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consulta recibos pendientes de Cobro'
,p_alias=>'CCAUTREC'
,p_step_title=>'Consulta recibos pendientes de Cobro'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ccrecibo(p_numero,p_serie) {',
'    apex.item("P587_NRO_RECIBO").setValue(p_numero);',
'    apex.item("P587_SER_RECIBO").setValue(p_serie);',
'}',
'function ver_datos(p_cod_moneda,p_cod_custodio,p_fec_estado,p_fec_cobro) {',
'    apex.item("P587_COD_MONEDA").setValue(p_cod_moneda);',
'    apex.item("P587_COD_CUSTODIO").setValue(p_cod_custodio);',
'    apex.item("P587_FEC_ESTADO").setValue(p_fec_estado);',
'    apex.item("P587_FEC_COBRO").setValue(p_fec_cobro);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JANDERSON'
,p_last_upd_yyyymmddhh24miss=>'20230922113710'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199542487007478407)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199542570204478408)
,p_plug_name=>'Recibos Pendientes de Cobro'
,p_parent_plug_id=>wwv_flow_imp.id(199542487007478407)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199542721421478410)
,p_plug_name=>'Reporte Recibos'
,p_parent_plug_id=>wwv_flow_imp.id(199542570204478408)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_SUCURSAL,',
'       SER_RECIBO,',
'       NRO_RECIBO,',
'       FEC_RECIBO,',
'       FEC_COBRO,',
'       COD_CLIENTE,',
'       COD_COBRADOR,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       COD_USUARIO,',
'       ANULADO,',
'       FEC_ANULACION,',
'       NRO_MOV_CAJ,',
'       ESTADO,',
'       FEC_ESTADO,',
'       TOT_RECIBO,',
'       COD_CUSTODIO,',
'       TIP_RECIBO,',
'       SER_PLANILLA,',
'       NRO_PLANILLA,',
'       REFERENCIA,',
'       TIP_MOV_CAJ,',
'       SER_MOV_CAJ,',
'       COD_CUSTODIO_INI,',
'       FEC_CUSTODIO,',
'       ASIENTOS,',
'       NOM_CLIENTE,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       IND_ADELANTO_OT,',
'       IND_IMPRESO,',
'       TOTAL_MORA,',
'       SALDO_VENCIDO,',
'       COD_USUARIO_ANU,',
'       COD_MOTIVO_ANU,',
'       IND_NO_COMISION,',
'       TRANSACCION_PRO_ANU,',
'       TRANSACCION_PRONET_ANU,',
'       TRANSACCION_PRONET,',
'       COMENTARIO_RECIBO,',
'       NRO_PLANILLA_PEDIDO,',
'       ASIENTOS_ANULACION,',
'       IND_CANJE_CHEQUES,',
'       null CCRECIBO,',
'       null ver_datos',
'',
'',
' from CC_RECIBOS',
' where cod_empresa = :P_COD_EMPRESA and NRO_MOV_CAJ is null and nvl(anulado,''N'')<>''S''',
' and fec_recibo>sysdate-360 and TOT_RECIBO>0',
' order by ser_recibo, nro_recibo'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Recibos'
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
 p_id=>wwv_flow_imp.id(199542874678478411)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>199542874678478411
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199542906263478412)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199543073325478413)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199543193708478414)
,p_db_column_name=>'SER_RECIBO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie Recibo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199543234822478415)
,p_db_column_name=>'NRO_RECIBO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00FAmero Recibo')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199543300312478416)
,p_db_column_name=>'FEC_RECIBO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199543496328478417)
,p_db_column_name=>'FEC_COBRO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Cobro'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199543536911478418)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('C\00F3digo Cliente')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199543679968478419)
,p_db_column_name=>'COD_COBRADOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Cobrador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199543772917478420)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199543838394478421)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199543988061478422)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199544084009478423)
,p_db_column_name=>'ANULADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199544185286478424)
,p_db_column_name=>'FEC_ANULACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fec Anulacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199544245803478425)
,p_db_column_name=>'NRO_MOV_CAJ'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nro Mov Caj'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199544329819478426)
,p_db_column_name=>'ESTADO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199544492435478427)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199544510128478428)
,p_db_column_name=>'TOT_RECIBO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Total Recibo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199544623880478429)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199544727639478430)
,p_db_column_name=>'TIP_RECIBO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Tip Recibo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199544870079478431)
,p_db_column_name=>'SER_PLANILLA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Ser Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199544953815478432)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199545062425478433)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Referencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199545191288478434)
,p_db_column_name=>'TIP_MOV_CAJ'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Tip Mov Caj'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199545267674478435)
,p_db_column_name=>'SER_MOV_CAJ'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Ser Mov Caj'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199545387649478436)
,p_db_column_name=>'COD_CUSTODIO_INI'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Custodio Ini'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199545425334478437)
,p_db_column_name=>'FEC_CUSTODIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Fec Custodio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199545510772478438)
,p_db_column_name=>'ASIENTOS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Asientos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199545600359478439)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199545732596478440)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199545839117478441)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199545961035478442)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199546006338478443)
,p_db_column_name=>'IND_ADELANTO_OT'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Ind Adelanto Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199546197868478444)
,p_db_column_name=>'IND_IMPRESO'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Ind Impreso'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199546214360478445)
,p_db_column_name=>'TOTAL_MORA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Total Mora'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199546351457478446)
,p_db_column_name=>'SALDO_VENCIDO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Saldo Vencido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199546454446478447)
,p_db_column_name=>'COD_USUARIO_ANU'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Cod Usuario Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199546534918478448)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199546676925478449)
,p_db_column_name=>'IND_NO_COMISION'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Ind No Comision'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199546738731478450)
,p_db_column_name=>'TRANSACCION_PRO_ANU'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Transaccion Pro Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201020627743310101)
,p_db_column_name=>'TRANSACCION_PRONET_ANU'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Transaccion Pronet Anu'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201020715901310102)
,p_db_column_name=>'TRANSACCION_PRONET'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Transaccion Pronet'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201020816188310103)
,p_db_column_name=>'COMENTARIO_RECIBO'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Comentario Recibo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201020907043310104)
,p_db_column_name=>'NRO_PLANILLA_PEDIDO'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Nro Planilla Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201021014496310105)
,p_db_column_name=>'ASIENTOS_ANULACION'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Asientos Anulacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201021166182310106)
,p_db_column_name=>'IND_CANJE_CHEQUES'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Ind Canje Cheques'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201023494217310129)
,p_db_column_name=>'CCRECIBO'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Ver Recibo'
,p_column_link=>'javascript:ccrecibo(''#NRO_RECIBO#'',''#SER_RECIBO#'');'
,p_column_linktext=>'<span class="fa fa-arrow-circle-o-right" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201775899869585507)
,p_db_column_name=>'VER_DATOS'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Ver Datos'
,p_column_link=>'javascript:ver_datos(''#COD_MONEDA#'',''#COD_CUSTODIO#'',''#FEC_ESTADO#'',''#FEC_COBRO#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(201042244204290189)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2010423'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SER_RECIBO:NRO_RECIBO:FEC_RECIBO:COD_CLIENTE:NOM_CLIENTE:TOT_RECIBO:VER_DATOS:CCRECIBO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(201021310521310108)
,p_plug_name=>'Planilla Monedas / Usuario'
,p_parent_plug_id=>wwv_flow_imp.id(199542487007478407)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(201024451625310139)
,p_plug_name=>'Variables'
,p_parent_plug_id=>wwv_flow_imp.id(199542487007478407)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(201022117455310116)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(201021310521310108)
,p_button_name=>'BT_FORMA_COBRO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Forma de Cobro'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(201775935542585508)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(201021310521310108)
,p_button_name=>'BT_FORMA_COBRO_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Forma de Cobro '
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:95:P95_P_COD_SUCURSAL,P95_P_COD_CLIENTE,P95_P_SER_COMPROBANTE,P95_P_NRO_COMPROBANTE,P95_P_TIPO_COMPROBANTE,P95_P_FECHA,P95_P_COD_CUSTODIO:&P587_COD_SUCURSAL.,&P587_COD_CLIENTE.,&P587_SER_RECIBO.,&P587_NRO_RECIBO.,REC,&P587_FEC_RECIBO.,&P587_COD_CUSTODIO.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201021462514310109)
,p_name=>'P587_COD_MONEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(201021310521310108)
,p_prompt=>unistr('C\00F3digo Moneda')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_MONEDAS_CCAUTREC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_moneda, siglas, tipo_cambio_dia, descripcion ',
'from monedas ',
'order by descripcion'))
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201021509306310110)
,p_name=>'P587_DESC_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(201021310521310108)
,p_prompt=>unistr('Descripci\00F3n Moneda')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201021602060310111)
,p_name=>'P587_COD_CUSTODIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(201021310521310108)
,p_prompt=>unistr('C\00F3digo Usuario')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_CUSTODIOS_CCAUTREC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_custodio r , descripcion d ',
'from cc_custodios ',
'where cod_empresa =''1''',
'order by descripcion'))
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201021714636310112)
,p_name=>'P587_NOM_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(201021310521310108)
,p_prompt=>'Nombre Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201021941732310114)
,p_name=>'P587_FEC_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(201021310521310108)
,p_prompt=>'Fecha de Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201022047818310115)
,p_name=>'P587_FEC_COBRO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(201021310521310108)
,p_prompt=>'Fecha Cobro'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201022675493310121)
,p_name=>'P587_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201022925286310124)
,p_name=>'P587_NOM_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201023094877310125)
,p_name=>'P587_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201023218308310127)
,p_name=>'P587_DESCRIPCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201023385062310128)
,p_name=>'P587_COD_CONDICION_VENTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201023588425310130)
,p_name=>'P587_SER_RECIBO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201023670827310131)
,p_name=>'P587_NRO_RECIBO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201023781008310132)
,p_name=>'P587_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201024542614310140)
,p_name=>'P587_URL2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201024680438310141)
,p_name=>'P587_COD_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201024903538310144)
,p_name=>'P587_FEC_RECIBO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201775278968585501)
,p_name=>'P587_TOT_RECIBO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(201024451625310139)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(201022218083310117)
,p_name=>'DA_COD_MONEDA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P587_COD_MONEDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201022345105310118)
,p_event_id=>wwv_flow_imp.id(201022218083310117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select descripcion',
'    into :P587_DESC_MONEDA',
'    from monedas',
'   where cod_moneda = :P587_COD_MONEDA;',
'EXCEPTION',
'  when no_data_found then',
'    :P587_DESC_MONEDA := NULL;',
unistr('    APEX_DEBUG.ERROR(''No se encuentra c\00F3digo de moneda.'');'),
'',
'  when others then',
'    :P587_DESC_MONEDA := NULL;',
'    APEX_DEBUG.ERROR(''Error en la tabla de Monedas '' || sqlerrm );',
'',
'END;'))
,p_attribute_02=>'P587_COD_MONEDA'
,p_attribute_03=>'P587_DESC_MONEDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(201022410072310119)
,p_name=>'DA_CUSTODIO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P587_COD_CUSTODIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201022503098310120)
,p_event_id=>wwv_flow_imp.id(201022410072310119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )',
'    into :P587_NOM_USUARIO',
'    from usuarios u, personas p',
'   where u.cod_empresa = :P_COD_EMPRESA',
'     and u.cod_usuario = :P587_COD_USUARIO',
'     and u.cod_persona = p.cod_persona;',
'     APEX_DEBUG.ERROR(''Nom usuario ''|| :P587_NOM_USUARIO);',
'EXCEPTION',
'  when others then',
'    :P587_NOM_USUARIO := NULL;',
'    APEX_DEBUG.ERROR(''Error excepcion ''|| sqlerrm);',
'END;'))
,p_attribute_02=>'P587_COD_USUARIO'
,p_attribute_03=>'P587_NOM_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(201022785599310122)
,p_name=>'DA_COD_USUARIO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P587_COD_USUARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201022870810310123)
,p_event_id=>wwv_flow_imp.id(201022785599310122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )',
'    into :P587_NOM_USUARIO',
'    from usuarios u, personas p',
'   where u.cod_empresa = :P_COD_EMPRESA',
'     and u.cod_usuario = :P587_COD_USUARIO',
'     and u.cod_persona = p.cod_persona;',
'EXCEPTION',
'  when others then',
'    :P587_NOM_USUARIO := NULL;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(201023889469310133)
,p_name=>'DA_CCRECIBO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P587_SER_RECIBO'
,p_condition_element=>'P587_SER_RECIBO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201023969770310134)
,p_event_id=>wwv_flow_imp.id(201023889469310133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 394,',
'                            p_items  => ''P394_NRO_RECIBO,P394_SER_RECIBO'',',
'                            p_values => (''''||:P587_NRO_RECIBO||'',''||:P587_SER_RECIBO||'''')) f_url_1',
'    INTO :P587_URL',
'    FROM DUAL;'))
,p_attribute_02=>'P587_NRO_RECIBO,P587_SER_RECIBO'
,p_attribute_03=>'P587_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201024037472310135)
,p_event_id=>wwv_flow_imp.id(201023889469310133)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P587_URL").getValue();',
'',
'apex.navigation.redirect (url);'))
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
 p_id=>wwv_flow_imp.id(201024279892310137)
,p_name=>'DA_COBRO'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(201022117455310116)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201024361281310138)
,p_event_id=>wwv_flow_imp.id(201024279892310137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 95,',
'                            p_items  => ''P95_MOVCAJ_COD_MONEDA,P95_COD_CUSTODIO,P95_MOVCAJ_FEC_ALTA,P95_COD_SUCURSAL,P95_P_COD_CLIENTE'',',
'                            p_values => (''''||:P587_COD_MONEDA||'',''||:P587_COD_CUSTODIO||'',''||:P587_FEC_ESTADO||'',''||:P587_COD_SUCURSAL||'',''||:P587_COD_CLIENTE||'',''||'''')) f_url_1',
'    INTO :P587_URL2',
'     FROM DUAL;',
''))
,p_attribute_02=>'P587_COD_MONEDA,P587_COD_CUSTODIO,P587_FEC_ESTADO,P587_COD_SUCURSAL,P587_COD_CLIENTE'
,p_attribute_03=>'P587_URL2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201775730672585506)
,p_event_id=>wwv_flow_imp.id(201024279892310137)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P587_URL2").getValue();',
'',
'apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(201024119183310136)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_INIT'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
