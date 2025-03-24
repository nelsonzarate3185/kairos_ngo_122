prompt --application/pages/page_00598
begin
--   Manifest
--     PAGE: 00598
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
 p_id=>598
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Control de pedidos de Repuestos - CAREPPED'
,p_alias=>'CAREPPED1'
,p_step_title=>'Control de pedidos de Repuestos - CAREPPED'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'#FICHA1{    ',
'  background-color: #487ab8  !important;',
'} ',
'.t-Form-label  {',
'  color: darkblue  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'',
'.display_only, .apex-item-display-only',
'{',
'    font-weight: bold !important;',
'    border-style: solid !important;',
'    background-color: white  !important;',
'',
'}',
'',
'.a-IRR-header  a , #checktext , .a-IRR-headerLink{color: yellow; }',
'.a-IRR-header , .a-IRR-headerLink{    background-color: #003a85;',
'background-image: #003a85;',
' ',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240917122744'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199629200261447043)
,p_plug_name=>'Control de pedidos de Repuestos '
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(199629642103447047)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(199629200261447043)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       ESTADO,',
'       FEC_ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       NRO_COMPROBANTE_REF,',
'       NOM_CLIENTE,',
'       NOMBRE_CAB,',
'       COD_USUARIO_AUTORIZACION,',
'       FECHA_AUTORIZACION,',
'       AUTORIZADO,',
'       COD_USUARIO_ANU,',
'       COD_MOTIVO_ANU,',
'       OBSERVACION,',
'       PRESUPUESTO,',
'       DESC_ERROR,',
'       ANULADO,',
'       CONFIRMADO,',
'       FACTURADO,',
'       VERIFICADO,',
'       TRASLADO,',
'       HORA_ALTA,',
'       COD_SUCURSAL_ENV,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       FEC_CONFIMACION,',
'       HORA_CONFIRMACION,',
'       COD_PROVEEDOR,',
'       IND_RECEPCIONADO,',
'       FEC_RECEPCION,',
'       IND_PROCESADO,',
'       IND_REBOBINADO,',
'       RETIRA_DE',
'  from CA_PEDIDO_REPUESTO_CAB aa',
'  where aa.cod_empresa = :p_cod_empresa ',
'  AND NVL(ANULADO,''N'')<>''S''',
'AND NVL(aa.ind_recepcionado,''N'')<>''S''',
'AND aa.FEC_COMPROBANTE>SYSDATE-60',
'AND aa.TIP_COMPROBANTE_REF=''ORT''',
'AND AA.SER_COMPROBANTE_REF=''A''',
'AND (aa.cod_SUCURSAL_ENV =DECODE(:P598_DEPOSITO,''T'',aa.cod_SUCURSAL_ENV,:P598_DEPOSITO) OR :P598_DEPOSITO IS NULL)',
'AND NRO_COMPROBANTE_REF IN (SELECT C.NRO_COMPROBANTE',
'                            FROM VT_ORDENES_TRABAJO C',
'                            WHERE C.COD_EMPRESA=:p_COD_EMPRESA',
'                            AND C.TIP_COMPROBANTE=AA.TIP_COMPROBANTE_REF',
'                            AND C.SER_COMPROBANTE=AA.SER_COMPROBANTE_REF',
'                            AND C.NRO_COMPROBANTE=AA.NRO_COMPROBANTE_REF',
'                            AND NVL(C.CERRADO,''N'')<>''S''',
'                            AND NVL(C.anulado,''N'')<>''S''',
'                            AND (C.ESTADO_PRESU =DECODE(:P598_PENDIENTE_OT,''T'',ESTADO_PRESU,:P598_PENDIENTE_OT) OR :P598_PENDIENTE_OT IS NULL)',
'AND c.COD_ORIGEN IN(''1'',''15'',''20'',''3'',''24'',''29'',''20'',''11'')',
'AND NVL(C.IND_ENTREGA,''N'')<>''S''',
'AND NVL(C.IND_RETIRADO,''N'')<>''S'')',
'and nro_comprobante in (select d.nro_comprobante',
'from  CA_PEDIDO_REPUESTO_det D',
'where 	 aa.COD_EMPRESA=D.COD_EMPRESA',
'				AND aa.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'				AND aa.SER_COMPROBANTE=D.SER_COMPROBANTE',
'				AND aa.NRO_COMPROBANTE=D.NRO_COMPROBANTE)',
'order by aa.nro_comprobante desc ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P598_DEPOSITO,P598_PENDIENTE_OT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT'
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
 p_id=>wwv_flow_imp.id(199629818392447049)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No hay registros.',
''))
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>199629818392447049
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(199629977749447050)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201408695810834101)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201408774835834102)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201408876609834103)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_link=>'f?p=&APP_ID.:326:&SESSION.::&DEBUG.:Y:P326_NRO_COMPROBANTE:#NRO_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201408990354834104)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201409049120834105)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201409108483834106)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201409268755834107)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201409353739834108)
,p_db_column_name=>'FEC_ESTADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fec Estado'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201409487323834109)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201409526896834110)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201409627208834111)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro. OT'
,p_column_link=>'f?p=&APP_ID.:588:&SESSION.::&DEBUG.:Y,:P588_NRO_COMPROBANTE_REF,P588_OBSERV,P588_NRO_COMPROBANTE,P588_ESTADO_PRESU:#NRO_COMPROBANTE_REF#,#OBSERVACION#,#NRO_COMPROBANTE#,#ESTADO#'
,p_column_linktext=>'#NRO_COMPROBANTE_REF#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201409771848834112)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201409867269834113)
,p_db_column_name=>'NOMBRE_CAB'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Nombre Cab'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201409946767834114)
,p_db_column_name=>'COD_USUARIO_AUTORIZACION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Usuario Autorizacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201410048017834115)
,p_db_column_name=>'FECHA_AUTORIZACION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Fecha Autorizacion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201410190904834116)
,p_db_column_name=>'AUTORIZADO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Autorizado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201410296191834117)
,p_db_column_name=>'COD_USUARIO_ANU'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Usuario Anu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201410304668834118)
,p_db_column_name=>'COD_MOTIVO_ANU'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Motivo Anu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201410455824834119)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201410580042834120)
,p_db_column_name=>'PRESUPUESTO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Presupuesto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201410637237834121)
,p_db_column_name=>'DESC_ERROR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Desc Error'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201410761093834122)
,p_db_column_name=>'ANULADO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201410883980834123)
,p_db_column_name=>'CONFIRMADO'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Confirmado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201410936056834124)
,p_db_column_name=>'FACTURADO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Facturado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201411091182834125)
,p_db_column_name=>'VERIFICADO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Verificado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201411175780834126)
,p_db_column_name=>'TRASLADO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Traslado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201411264755834127)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201411327945834128)
,p_db_column_name=>'COD_SUCURSAL_ENV'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cod Sucursal Env'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201411494940834129)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201411573741834130)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201411675838834131)
,p_db_column_name=>'FEC_CONFIMACION'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Fecha Confirma'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201411779181834132)
,p_db_column_name=>'HORA_CONFIRMACION'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Hora Confirma'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201411855003834133)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201411991487834134)
,p_db_column_name=>'IND_RECEPCIONADO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Ind Recepcionado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201412070835834135)
,p_db_column_name=>'FEC_RECEPCION'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Fec Recepcion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201412137229834136)
,p_db_column_name=>'IND_PROCESADO'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Ind Procesado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(201412242955834137)
,p_db_column_name=>'IND_REBOBINADO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Ind Rebobinado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(169928125419882115)
,p_db_column_name=>'RETIRA_DE'
,p_display_order=>390
,p_column_identifier=>'AN'
,p_column_label=>'Retira De'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(201429285137825960)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2014293'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_EMPRESA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_SUCURSAL:FEC_COMPROBANTE:COD_CLIENTE:ESTADO:FEC_ESTADO:COD_USUARIO:FEC_ALTA:NRO_COMPROBANTE_REF:NOM_CLIENTE:NOMBRE_CAB:COD_USUARIO_AUTORIZACION:FECHA_AUTORIZACION:AUTORIZADO:COD_USUARIO_'
||'ANU:COD_MOTIVO_ANU:OBSERVACION:PRESUPUESTO:DESC_ERROR:ANULADO:CONFIRMADO:FACTURADO:VERIFICADO:TRASLADO:HORA_ALTA:COD_SUCURSAL_ENV:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:FEC_CONFIMACION:HORA_CONFIRMACION:COD_PROVEEDOR:IND_RECEPCIONADO:FEC_RECEPCION:I'
||'ND_PROCESADO:IND_REBOBINADO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199629349600447044)
,p_name=>'P598_DEPOSITO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(199629200261447043)
,p_prompt=>unistr('T\00E9cnico')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''(''||cod_sucursal ||'') ''||nombre ,',
'        COD_SUCURSAL ',
'FROM cm_proveedores pro, personas p',
'where cod_empresa = 1',
'and pro.cod_persona=p.cod_persona',
'and pro.ind_servicio_tecnico=''STNGO'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(199629454560447045)
,p_name=>'P598_PENDIENTE_OT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(199629200261447043)
,p_prompt=>'Ver Pendientes en Repuestos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'PE'
,p_attribute_03=>'T'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(169851566643440313)
,p_name=>'DA_DEPOSITO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P598_DEPOSITO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832975567234065720)
,p_event_id=>wwv_flow_imp.id(169851566643440313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169851763848440315)
,p_event_id=>wwv_flow_imp.id(169851566643440313)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P598_DEPOSITO,P598_PENDIENTE_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169851664008440314)
,p_event_id=>wwv_flow_imp.id(169851566643440313)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(199629642103447047)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832975690226065721)
,p_event_id=>wwv_flow_imp.id(169851566643440313)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove(); ',
'$(".u-Processing").remove();'))
);
wwv_flow_imp.component_end;
end;
/
