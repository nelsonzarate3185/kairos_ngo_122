prompt --application/pages/page_00267
begin
--   Manifest
--     PAGE: 00267
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
 p_id=>267
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'SMASISGA'
,p_alias=>'SMASISGA'
,p_step_title=>'SMASISGA'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230308125155'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63985945601406517)
,p_plug_name=>'SMASISGA'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63986030860406518)
,p_plug_name=>'ASISTENCIA'
,p_parent_plug_id=>wwv_flow_imp.id(63985945601406517)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64699540164997302)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    seq_id p_id,',
'    c001 COD_EMPRESA,',
'    C002 NRO_ASISTENCIA, ',
'    C003 FECHA_ALTA, ',
'    C004 COD_USUARIO, ',
'    C005 TIPO_ASIST, ',
'    C006 ESTADO,',
'    C007 COD_CLIENTE , ',
'    C008 cod_ARTICULO, ',
'    C009 IND_GARANTIA , ',
'    C010 TIP_COMPROBANTE_REF , ',
'    C011 SER_COMPROBANTE_REF , ',
'    C012 NRO_COMPROBANTE_REF ,  ',
'    C013 TIP_COMPROBANTE_ORT , ',
'    C014 SER_COMPROBANTE_ORT , ',
'    C015 NRO_COMPROBANTE_ORT , ',
'    C016 OBSERVACION , ',
'    C017 NRO_GARANTIA , ',
'    C018 COD_TECNICO , ',
'    C019 COD_ORIGEN , ',
'    C020 IND_SOL_CRED , ',
'    C021 IND_OK_CRED , ',
'    C022 IND_NO_CRED , ',
'    C023 FECHA_VISITA , ',
'    C024 NRO_ORD_SERVICIO , ',
'    C025 DIRECCION , ',
'    C026 TELEFONO , ',
'    C027 IND_RECLAMO , ',
'    C028 IND_ADICIONAL , ',
'    C029 MONTO_ADICIONAL , ',
'    -- P_C030 => RESERVADO ACCION,',
'    C031 FECHA_FINALIZA , ',
'    C032 FECHA_COMPRA , ',
'    C033 COD_DISTRIBUIDOR, ',
'    C034 SERIE_PRODUCTO ,',
'    C035 MONTO_COMISION_TECNICO ,',
'    C036 RID,',
'    c037 des_art,',
'    null ver_seguimiento,',
'    null detalle,',
'    null editar,',
'    null eliminar',
'from APEX_COLLECTIONS',
'where COLLECTION_NAME = ''COL_ASISTENCIA''',
'AND nvl(c030, ''O'') <> ''B'' ',
'ORDER BY 1;',
'    ',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P267_P_NRO_ASISTENCIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CABECERA'
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
 p_id=>wwv_flow_imp.id(64699856655997305)
,p_report_id_item=>'P267_P_NRO_ASISTENCIA'
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
,p_internal_uid=>64699856655997305
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64699940238997306)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64700092842997307)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64700175160997308)
,p_db_column_name=>'NRO_ASISTENCIA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Asistencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64700222367997309)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64700327581997310)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64700451424997311)
,p_db_column_name=>'TIPO_ASIST'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tipo Asist'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(65705815907158191)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64700547855997312)
,p_db_column_name=>'ESTADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64700603166997313)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(64824997829940020)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64700749028997314)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64700875752997315)
,p_db_column_name=>'IND_GARANTIA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ind Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64700947016997316)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64701037412997317)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64701182667997318)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64701287909997319)
,p_db_column_name=>'TIP_COMPROBANTE_ORT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Comprobante Ort'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64701361677997320)
,p_db_column_name=>'SER_COMPROBANTE_ORT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ser Comprobante Ort'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64701496299997321)
,p_db_column_name=>'NRO_COMPROBANTE_ORT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Nro Comprobante Ort'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64701515278997322)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64701615786997323)
,p_db_column_name=>'NRO_GARANTIA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Nro Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64701753167997324)
,p_db_column_name=>'COD_TECNICO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Tecnico'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64701833687997325)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64701959581997326)
,p_db_column_name=>'IND_SOL_CRED'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Ind Sol Cred'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64702007110997327)
,p_db_column_name=>'IND_OK_CRED'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Ind Ok Cred'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64702111474997328)
,p_db_column_name=>'IND_NO_CRED'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Ind No Cred'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64702276682997329)
,p_db_column_name=>'FECHA_VISITA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Fecha Visita'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64702385963997330)
,p_db_column_name=>'NRO_ORD_SERVICIO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Nro Ord Servicio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64702467114997331)
,p_db_column_name=>'DIRECCION'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64702571674997332)
,p_db_column_name=>'TELEFONO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64702693041997333)
,p_db_column_name=>'IND_RECLAMO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Ind Reclamo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64702707216997334)
,p_db_column_name=>'IND_ADICIONAL'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Ind Adicional'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64702886186997335)
,p_db_column_name=>'MONTO_ADICIONAL'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Monto Adicional'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64702910382997336)
,p_db_column_name=>'FECHA_FINALIZA'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Fecha Finaliza'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64703031843997337)
,p_db_column_name=>'FECHA_COMPRA'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Fecha Compra'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64703102210997338)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64703298086997339)
,p_db_column_name=>'SERIE_PRODUCTO'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Serie Producto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64703349204997340)
,p_db_column_name=>'MONTO_COMISION_TECNICO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Monto Comision Tecnico'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64703454843997341)
,p_db_column_name=>'RID'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64703603472997343)
,p_db_column_name=>'VER_SEGUIMIENTO'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Seguimiento'
,p_column_link=>'javascript:$s(''P267_SEQ_ID_VER_SEG'',''#NRO_ASISTENCIA#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-book"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64704194357997348)
,p_db_column_name=>'DETALLE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P267_SEQ_ID_DETALLE_ASIS'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64704266375997349)
,p_db_column_name=>'EDITAR'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P267_SEQ_ID_EDITAR_ASIS'',''#P_ID#'');'
,p_column_linktext=>' <span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64704311219997350)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P267_SEQ_ID_ELIMINAR_ASIS'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64858594534710949)
,p_db_column_name=>'DES_ART'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Des Art'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64800246226842768)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'648003'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NRO_ASISTENCIA:TIPO_ASIST:COD_CLIENTE:COD_ARTICULO:VER_SEGUIMIENTO:DETALLE:EDITAR:ELIMINAR:'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63986107726406519)
,p_plug_name=>'SEGUIMIENTO'
,p_parent_plug_id=>wwv_flow_imp.id(63985945601406517)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64420340014474235)
,p_plug_name=>'AGREGAR/EDITAR SEGUIMIENTO'
,p_parent_plug_id=>wwv_flow_imp.id(63986107726406519)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64699781033997304)
,p_plug_name=>'ASISTENCIA_SEGUIMIENTO'
,p_parent_plug_id=>wwv_flow_imp.id(63986107726406519)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'     SEQ_ID P_ID,',
'     C001 COD_EMPRESA,',
'     C002 NRO_ASISTENCIA,',
'     C003 OBSERVACION,',
'     C004 FECHA,',
'     C005 USUARIO',
'     ',
'FROM APEX_COLLECTIONS',
'where collection_name = ''COL_SEGUIMIENTO''',
'AND nvl(c030, ''O'') <> ''B'' ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ASISTENCIA_SEGUIMIENTO'
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
 p_id=>wwv_flow_imp.id(64857037597710934)
,p_report_id_item=>'P267_P_NRO_ASISTENCIA'
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>64857037597710934
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64857258694710936)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64857398116710937)
,p_db_column_name=>'NRO_ASISTENCIA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Asistencia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64857415906710938)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64857512405710939)
,p_db_column_name=>'FECHA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64857656221710940)
,p_db_column_name=>'USUARIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65358676229366240)
,p_db_column_name=>'P_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(65341642104112948)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'653417'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:NRO_ASISTENCIA:OBSERVACION:FECHA:USUARIO'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64421072206474242)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108043983769228004)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65358706731366241)
,p_button_sequence=>440
,p_button_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_button_name=>'BT_PROCESADO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'PROCESAR'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64854067136710904)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_button_name=>'BT_ORDEN_DE_TRABAJO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Orden de trabajo'
,p_button_redirect_url=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.::P244_NRO_COMPROBANTE,P244_SER_COMPROBANTE:&P267_NRO_COMPROBANTE_ORT.,&P267_SER_COMPROBANTE_ORT.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64854191340710905)
,p_button_sequence=>340
,p_button_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_button_name=>'BT_CARGAR_SEGUIMIENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Seguimiento'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64854905906710913)
,p_button_sequence=>350
,p_button_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_button_name=>'BT_SOL_CRED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Solicitar Cr\00E9dito')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64855064670710914)
,p_button_sequence=>360
,p_button_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_button_name=>'BT_APRUEBA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Aprobar Cr\00E9dito')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64855184870710915)
,p_button_sequence=>370
,p_button_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_button_name=>'BT_RECHAZA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Rechazar Cr\00E9dito')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65354917588366203)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(64420340014474235)
,p_button_name=>'BT_CANCELAR_SEG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64855535763710919)
,p_button_sequence=>450
,p_button_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65354827684366202)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64420340014474235)
,p_button_name=>'BT_ACEPTAR_CREAR_SEG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64704068997997347)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_button_name=>'BT_AGREGAR_ASIS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(122748478736118004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(63985945601406517)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:410:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65356293758366216)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(63985945601406517)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CONFIRMAR'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63986317950406521)
,p_name=>'P267_C_COD_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63986432024406522)
,p_name=>'P267_NRO_ASISTENCIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Nro. Asistencia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63986582266406523)
,p_name=>'P267_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREA,COORDINADO;COORD,PROCESADO;PROC,FINALIZADO;FINAL,CANCELADO;CANCEL'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione .'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63986671473406524)
,p_name=>'P267_FECHA_ALTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Fecha Alta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63986781291406525)
,p_name=>'P267_COD_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Cod Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63986886388406526)
,p_name=>'P267_DIRECCION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Direccion'
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
 p_id=>wwv_flow_imp.id(63986937110406527)
,p_name=>'P267_TELEFONO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Telefono'
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
 p_id=>wwv_flow_imp.id(63987027858406528)
,p_name=>'P267_COD_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE_SMASISGA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre, c.cod_cliente, I.NUMERO',
'  from cc_clientes c, personas p, ident_personas i',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'   and c.estado <> ''B''',
'   and c.estado <> ''I''',
'   and i.cod_persona(+) = p.cod_persona',
'   and i.cod_ident(+)=''CI''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_lov_cascade_parent_items=>'P267_P_NRO_ASISTENCIA'
,p_ajax_items_to_submit=>'P267_P_NRO_ASISTENCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
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
 p_id=>wwv_flow_imp.id(63987111277406529)
,p_name=>'P267_COD_ARTICULO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_SMASISGA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - ''||descripcion D, cod_articulo R, cod_origen_art,cod_art_corto ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'and ( estado is null or estado in (''A'',''S'') ) ',
'order by descripcion',
'',
'',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_lov_cascade_parent_items=>'P267_P_NRO_ASISTENCIA'
,p_ajax_items_to_submit=>'P267_P_NRO_ASISTENCIA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(63987246749406530)
,p_name=>'P267_DESC_ART'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63987303184406531)
,p_name=>'P267_COD_DISTRIBUIDOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Cod Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDOR_SMASISGA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, c.cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA ',
'and c.cod_persona = p.cod_persona',
'AND NVL(ESTADO,''A'') NOT IN (''I'',''B'')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_lov_cascade_parent_items=>'P267_P_NRO_ASISTENCIA'
,p_ajax_items_to_submit=>'P267_P_NRO_ASISTENCIA'
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63987461910406532)
,p_name=>'P267_DESC_DISTRIBUIDOR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63987539114406533)
,p_name=>'P267_IND_GARANTIA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Garantia'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63987637548406534)
,p_name=>'P267_NRO_GARANTIA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Nr. Garantia'
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
 p_id=>wwv_flow_imp.id(63987747516406535)
,p_name=>'P267_SER_COMPROBANTE_ORT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Serie OT'
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
 p_id=>wwv_flow_imp.id(63987864864406536)
,p_name=>'P267_NRO_COMPROBANTE_ORT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Nro. OT'
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
 p_id=>wwv_flow_imp.id(63987971426406537)
,p_name=>'P267_FECHA_VISITA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Fec Visita'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(63988008224406538)
,p_name=>'P267_SERIE_PRODUCTO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Nro. de Serie'
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
 p_id=>wwv_flow_imp.id(63988138569406539)
,p_name=>'P267_COD_ORIGEN'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ORIGENES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_origen R, cod_origen||'' - ''|| descripcion D',
'from vt_origenes ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_lov_cascade_parent_items=>'P267_P_NRO_ASISTENCIA'
,p_ajax_items_to_submit=>'P267_P_NRO_ASISTENCIA'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(63988284342406540)
,p_name=>'P267_DESC_ORIGEN'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63988357442406541)
,p_name=>'P267_FECHA_FINALIZA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Fec Finalizado'
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
 p_id=>wwv_flow_imp.id(63988410981406542)
,p_name=>'P267_COD_TECNICO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>unistr('T\00E9cnico')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TECNICOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  t.cod_tecnico R, t.cod_tecnico ||'' - ''||p.nombre D',
'  from vt_tecnicos t, personas p ',
' where t.cod_empresa = :P_COD_EMPRESA',
'   and t.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_lov_cascade_parent_items=>'P267_P_NRO_ASISTENCIA'
,p_ajax_items_to_submit=>'P267_P_NRO_ASISTENCIA'
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63988550267406543)
,p_name=>'P267_NOM_TECNICO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63988631472406544)
,p_name=>'P267_IND_RECLAMO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Reclamo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63988704330406545)
,p_name=>'P267_IND_ADICIONAL'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Adicional'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63988820108406546)
,p_name=>'P267_NRO_COMPROBANTE_REF'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Nro. Comprobante'
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
 p_id=>wwv_flow_imp.id(63988944234406547)
,p_name=>'P267_FECHA_COMPRA'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Fecha Compra'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(63989051291406548)
,p_name=>'P267_OBSERVACION'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63989105217406549)
,p_name=>'P267_IND_SOL_CRED'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Solicitado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63989292910406550)
,p_name=>'P267_IND_OK_CRED'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Aprobado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64416921709474201)
,p_name=>'P267_IND_NO_CRED'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Rechazado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64417067768474202)
,p_name=>'P267_TIP_COMPROBANTE_ORT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64417778201474209)
,p_name=>'P267_MONTO_COMISION_TECNICO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Comision'
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
 p_id=>wwv_flow_imp.id(64417822958474210)
,p_name=>'P267_MONTO_ADICIONAL'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Adicional'
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
 p_id=>wwv_flow_imp.id(64420655089474238)
,p_name=>'P267_A_NRO_ASISTENCIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64420340014474235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64420748010474239)
,p_name=>'P267_A_OBSERVACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(64420340014474235)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64421142127474243)
,p_name=>'P267_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64421238041474244)
,p_name=>'P267_NOM_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64421406499474246)
,p_name=>'P267_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64421603417474248)
,p_name=>'P267_NOM_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64421705473474249)
,p_name=>'P267_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64421813465474250)
,p_name=>'P267_AUX_CONTROL_REPORTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64699437977997301)
,p_name=>'P267_AUX_MSJ_CONTROL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64703552445997342)
,p_name=>'P267_SEQ_ID_VER_SEG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64853718380710901)
,p_name=>'P267_SEQ_ID_EDITAR_ASIS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64853890042710902)
,p_name=>'P267_SEQ_ID_ELIMINAR_ASIS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64853998362710903)
,p_name=>'P267_SEQ_ID_DETALLE_ASIS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64854729559710911)
,p_name=>'P267_TIPO_ASIST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_prompt=>'Tipo Asist'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:PRE-VENTA;PSVTA,RELEVAMIENTO POST VENTA;RPVTA,REPARACI\00D3N;REPAR,MANTENIMIENTO;MANT,REPARACI\00D3N Y MANTENIMIENTO;REPMA')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64854815355710912)
,p_name=>'P267_NOM_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(63986030860406518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64857124137710935)
,p_name=>'P267_SEG_NRO_ASISTENCIA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65357939854366233)
,p_name=>'P267_P_NRO_ASISTENCIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(108043983769228004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66730773997990008)
,p_name=>'P267_SEQ_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66731344783990014)
,p_name=>'P267_RID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108044033243228005)
,p_name=>'P267_P_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(108043983769228004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108044176414228006)
,p_name=>'P267_P_SER_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(108043983769228004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108044212702228007)
,p_name=>'P267_P_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(108043983769228004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108044325474228008)
,p_name=>'P267_P_NRO_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(108043983769228004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108044422119228009)
,p_name=>'P267_P_ESTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(108043983769228004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108044595403228010)
,p_name=>'P267_P_COD_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(108043983769228004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(108045317159228018)
,p_name=>'P267_ACCION_CAB'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(64421072206474242)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64703752391997344)
,p_name=>'DA_MOSTRAR_SEGUIMIENTO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P267_SEQ_ID_VER_SEG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64856906638710933)
,p_event_id=>wwv_flow_imp.id(64703752391997344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     ',
'    SMASISGA.pr_crear_collection_seg(PI_COD_EMPRESA => :P267_COD_EMPRESA ,',
'                                    PI_NRO_ASISTENCIA => TO_NUMBER(:P267_SEQ_ID_VER_SEG) );',
'     ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''ERROR EN CARGA DE SEGUIMIENTO'');',
'END;'))
,p_attribute_02=>'P267_COD_EMPRESA,P267_SEQ_ID_VER_SEG'
,p_attribute_03=>'P267_P_NRO_ASISTENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64858214661710946)
,p_event_id=>wwv_flow_imp.id(64703752391997344)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64699781033997304)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64854508363710909)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64704068997997347)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64856610738710930)
,p_event_id=>wwv_flow_imp.id(64854508363710909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P267_TIPO_ASIST,P267_A_NRO_ASISTENCIA,P267_A_OBSERVACION,P267_ESTADO,P267_COD_CLIENTE,P267_DIRECCION,P267_TELEFONO,P267_COD_ARTICULO,P267_COD_DISTRIBUIDOR,P267_IND_GARANTIA,P267_NRO_GARANTIA,P267_SER_COMPROBANTE_ORT,P267_FECHA_VISITA,P267_SERIE_PRODU'
||'CTO,P267_COD_ORIGEN,P267_COD_TECNICO,P267_FECHA_FINALIZA,P267_IND_RECLAMO,P267_IND_ADICIONAL,P267_NRO_COMPROBANTE_REF,P267_OBSERVACION,P267_FECHA_COMPRA,P267_IND_SOL_CRED,P267_IND_OK_CRED,P267_IND_NO_CRED,P267_MONTO_ADICIONAL,P267_MONTO_COMISION_TECN'
||'ICO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64855249539710916)
,p_event_id=>wwv_flow_imp.id(64854508363710909)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P267_ESTADO := ''CREA'';',
'END;'))
,p_attribute_02=>'P267_P_NRO_ASISTENCIA'
,p_attribute_03=>'P267_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64855896325710922)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64855535763710919)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65355023913366204)
,p_name=>'DA_CARGAR_SEG'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64854191340710905)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65355262099366206)
,p_event_id=>wwv_flow_imp.id(65355023913366204)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64420340014474235)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65355347793366207)
,p_name=>'DA_CERRAR_REG_SEG'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65354917588366203)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65355467605366208)
,p_event_id=>wwv_flow_imp.id(65355347793366207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64420340014474235)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65355546814366209)
,p_name=>'DA_EDITAR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P267_SEQ_ID_EDITAR_ASIS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65355614438366210)
,p_event_id=>wwv_flow_imp.id(65355546814366209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select         ',
'        C002 NRO_ASISTENCIA, ',
'        C003 FECHA_ALTA, ',
'        C004 COD_USUARIO, ',
'        C005 TIPO_ASIST, ',
'        C006 ESTADO,',
'        C007 COD_CLIENTE , ',
'        C008 cod_ARTICULO, ',
'        C009 IND_GARANTIA ,         ',
'        C012 NRO_COMPROBANTE_REF ,  ',
'        C013 TIP_COMPROBANTE_ORT , ',
'        C014 SER_COMPROBANTE_ORT , ',
'        C015 NRO_COMPROBANTE_ORT , ',
'        C016 OBSERVACION , ',
'        C017 NRO_GARANTIA , ',
'        C018 COD_TECNICO , ',
'        C019 COD_ORIGEN , ',
'        C020 IND_SOL_CRED , ',
'        C021 IND_OK_CRED , ',
'        C022 IND_NO_CRED , ',
'        C023 FECHA_FINALIZA ,          ',
'        C025 DIRECCION , ',
'        C026 TELEFONO , ',
'        C027 IND_RECLAMO , ',
'        C028 IND_ADICIONAL , ',
'        C029 MONTO_ADICIONAL ,          ',
'        C031 FECHA_FINALIZA , ',
'        C032 FECHA_COMPRA , ',
'        C033 COD_DISTRIBUIDOR, ',
'        C034 SERIE_PRODUCTO ,',
'        C035 MONTO_COMISION_TECNICO',
'    INTO ',
'        :P267_NRO_ASISTENCIA,',
'        :P267_FECHA_ALTA,',
'        :P267_COD_USUARIO,',
'        :P267_TIPO_ASIST,',
'        :P267_ESTADO,',
'        :P267_COD_CLIENTE,',
'        :P267_COD_ARTICULO,',
'        :P267_IND_GARANTIA,',
'        :P267_NRO_COMPROBANTE_REF,',
'        :P267_TIP_COMPROBANTE_ORT,',
'        :P267_SER_COMPROBANTE_ORT,',
'        :P267_NRO_COMPROBANTE_ORT,',
'        :P267_OBSERVACION,',
'        :P267_NRO_GARANTIA,',
'        :P267_COD_TECNICO,',
'        :P267_COD_ORIGEN,',
'        :P267_IND_SOL_CRED,',
'        :P267_IND_OK_CRED,',
'        :P267_IND_NO_CRED,',
'        :P267_FECHA_FINALIZA,',
'        :P267_DIRECCION,',
'        :P267_TELEFONO,',
'        :P267_IND_RECLAMO,',
'        :P267_IND_ADICIONAL,',
'        :P267_MONTO_ADICIONAL,',
'        :P267_FECHA_FINALIZA,',
'        :P267_FECHA_COMPRA,',
'        :P267_COD_DISTRIBUIDOR,',
'        :P267_SERIE_PRODUCTO,',
'        :P267_MONTO_COMISION_TECNICO',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_ASISTENCIA''',
'    AND SEQ_ID = :P267_SEQ_ID_EDITAR_ASIS;',
'END;'))
,p_attribute_02=>'P267_SEQ_ID_EDITAR_ASIS'
,p_attribute_03=>'P267_NRO_ASISTENCIA,P267_FECHA_ALTA,P267_COD_USUARIO,P267_TIPO_ASIST,P267_ESTADO,P267_COD_CLIENTE,P267_COD_ARTICULO,P267_IND_GARANTIA,P267_NRO_COMPROBANTE_REF,P267_P_NRO_ASISTENCIA P267_TIP_COMPROBANTE_ORT,P267_SER_COMPROBANTE_ORT,P267_NRO_COMPROBANT'
||'E_ORT,P267_OBSERVACION,P267_NRO_GARANTIA,P267_COD_TECNICO,P267_COD_ORIGEN,P267_IND_SOL_CRED, P267_IND_OK_CRED,P267_IND_NO_CRED,P267_FECHA_FINALIZA,P267_DIRECCION,P267_TELEFONO,P267_IND_RECLAMO,P267_IND_ADICIONAL, P267_MONTO_ADICIONAL,P267_FECHA_FINAL'
||'IZA,P267_FECHA_COMPRA,P267_COD_DISTRIBUIDOR,P267_SERIE_PRODUCTO,P267_MONTO_COMISION_TECNICO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65356403538366218)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65356293758366216)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108045810850228023)
,p_event_id=>wwv_flow_imp.id(65356403538366218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P267_AUX_MSJ_CONTROL := NULL;',
'',
'IF :P267_COD_EMPRESA IS NULL',
'    or :P267_NRO_ASISTENCIA IS NULL',
'    or :P267_FECHA_ALTA  IS NULL',
'    or :P267_COD_USUARIO IS NULL',
'    or :P267_TIPO_ASIST IS NULL',
'    or :P267_ESTADO IS NULL',
'    or :P267_COD_CLIENTE IS NULL then',
'    :P267_AUX_MSJ_CONTROL := ''Por favor ingrese todos los datos obligatorios'';',
'end if;',
' '))
,p_attribute_02=>'P267_NRO_ASISTENCIA,P267_FECHA_ALTA,P267_COD_USUARIO,P267_TIPO_ASIST,P267_ESTADO,P267_COD_CLIENTE'
,p_attribute_03=>'P267_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108045955622228024)
,p_event_id=>wwv_flow_imp.id(65356403538366218)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P267_AUX_MSJ_CONTROL.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65356716177366221)
,p_event_id=>wwv_flow_imp.id(65356403538366218)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'PRESIONE PARA CONFIRMAR'
,p_attribute_02=>'CONFIRMAR'
,p_attribute_03=>'information'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65356850038366222)
,p_event_id=>wwv_flow_imp.id(65356403538366218)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65357590340366229)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P267_SEQ_ID_ELIMINAR_ASIS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65357642426366230)
,p_event_id=>wwv_flow_imp.id(65357590340366229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDESEA ELIMINAR?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65357708373366231)
,p_event_id=>wwv_flow_imp.id(65357590340366229)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SMASISGA.pr_eliminar_miembro(:P267_SEQ_ID_ELIMINAR_ASIS  ) ;',
' ',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'END;'))
,p_attribute_02=>'P267_SEQ_ID_ELIMINAR_ASIS'
,p_attribute_03=>'P267_P_NRO_ASISTENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65357830623366232)
,p_event_id=>wwv_flow_imp.id(65357590340366229)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64699540164997302)
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
 p_id=>wwv_flow_imp.id(65358059866366234)
,p_name=>'DA_GUARDAR_SEG'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65354827684366202)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65358152650366235)
,p_event_id=>wwv_flow_imp.id(65358059866366234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P267_A_OBSERVACION IS NULL THEN',
'	:P267_AUX_MSJ_CONTROL := ''INGRESE UN COMENTARIO'';',
'	ELSE',
'	BEGIN',
'        :P267_AUX_MSJ_CONTROL := null;',
'		SMASISGA.pr_agregar_seguimiento(PI_COD_EMPRESA => :P267_COD_EMPRESA,',
'                                 PI_NRO_ASISTENCIA => :P267_NRO_ASISTENCIA,',
'                                 PI_OBSERVACION => :P267_A_OBSERVACION,',
'                                 PI_COD_USUARIO => :P267_COD_USUARIO);',
'        :P267_A_OBSERVACION := NULL;',
'	',
'     EXCEPTION',
'            WHEN OTHERS THEN',
'            apex_debug.error(''fallo procedimiento agregar seguimiento''); ',
'    END;',
'END IF;'))
,p_attribute_02=>'P267_COD_EMPRESA,P267_NRO_ASISTENCIA,P267_A_OBSERVACION,P267_COD_USUARIO'
,p_attribute_03=>'P267_AUX_MSJ_CONTROL,P267_A_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65358205271366236)
,p_event_id=>wwv_flow_imp.id(65358059866366234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P267_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65358343642366237)
,p_event_id=>wwv_flow_imp.id(65358059866366234)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64699781033997304)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65358408428366238)
,p_event_id=>wwv_flow_imp.id(65358059866366234)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64420340014474235)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65358853687366242)
,p_name=>'DA_CAMBIAR_ESTADO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P267_ESTADO'
,p_condition_element=>'P267_ESTADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65358908221366243)
,p_event_id=>wwv_flow_imp.id(65358853687366242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P267_AUX_MSJ_CONTROL := NULL;',
'IF :P267_ESTADO =''FINAL'' THEN',
'    if  :P267_COD_TECNICO is not null THEN',
'        :P267_AUX_MSJ_CONTROL := 1;',
'        :P267_FECHA_FINALIZA:=trunc(sysdate);',
'    	DECLARE VPROVEEDOR VARCHAR2(10);',
'    	BEGIN',
'        	BEGIN',
'        		SELECT PRO.COD_PROVEEDOR',
'        		 INTO VPROVEEDOR',
'        		FROM VT_TECNICOS T, CM_PROVEEDORES PRO',
'        		WHERE T.COD_EMPRESA=:P267_COD_EMPRESA',
'        		AND T.COD_TECNICO=:P267_COD_TECNICO',
'        		AND T.COD_EMPRESA=PRO.COD_EMPRESA',
'        		AND T.COD_PERSONA=PRO.COD_PERSONA;',
'        	EXCEPTION',
'        		WHEN OTHERS THEN',
'        		 VPROVEEDOR:=0;',
'                 raise_application_error(-20201,''NO SE ENCUENTRA EL TECNICO.'');',
'        		END;',
'        	begin',
'                 select ',
'                 nvl(importe_comision,0)+( decode(nvl(:P267_IND_ADICIONAL,''N''),''S'',IMPORTE_ADICIONAL,0)),',
'                    ( decode(nvl(:P267_IND_ADICIONAL,''N''),''S'',IMPORTE_ADICIONAL,0))',
'                    into :P267_MONTO_COMISION_TECNICO,:P267_MONTO_ADICIONAL',
'                    from   CA_comision_LINEAS t , ST_ARTICULOS S',
'                       where ',
'                      t.cod_empresa     = :P267_COD_EMPRESA',
'                     ',
'                      and COD_PROVEEDOR= VPROVEEDOR',
'                      AND S.COD_EMPRESA=T.COD_EMPRESA',
'                      AND S.COD_ARTICULO=:P267_COD_ARTICULO              ',
'                      and T.cod_linea=S.COD_LINEA;',
'                exception',
'                	when others then ',
'                	 :P267_MONTO_COMISION_TECNICO:=0;',
'                      raise_application_error(-20201,''NO SE ENCUENTRA EL IMPORTE PARA EL PRODUCTO.'');',
'                 end;',
'     END;',
'            IF nvl(:P267_IND_RECLAMO,''N'')=''S'' OR :P267_NRO_COMPROBANTE_ORT IS NOT NULL then     ',
'            	 :P267_MONTO_COMISION_TECNICO:=0;',
'            	 :P267_MONTO_ADICIONAL:=0;',
'            end if;',
'     SMASISGA.pr_modificar_miembro(PI_SEQ_ID_EDITAR => 1,',
'                      PI_COD_USUARIO => :P267_COD_USUARIO,',
'                      PI_TIPO_ASIST => :P267_TIPO_ASIST, ',
'                      PI_ESTADO => :P267_ESTADO,                                  ',
'                      PI_COD_CLIENTE => :P267_COD_CLIENTE,',
'                      PI_cod_ARTICULO => :P267_COD_ARTICULO,',
'                      PI_IND_GARANTIA => :P267_IND_GARANTIA, ',
'                      PI_NRO_COMPROBANTE_REF => :P267_NRO_COMPROBANTE_REF,',
'                      PI_TIP_COMPROBANTE_ORT => :P267_TIP_COMPROBANTE_ORT,',
'                      PI_SER_COMPROBANTE_ORT => :P267_SER_COMPROBANTE_ORT,',
'                      PI_NRO_COMPROBANTE_ORT => :P267_NRO_COMPROBANTE_ORT,',
'                      PI_OBSERVACION => :P267_OBSERVACION,',
'                      PI_NRO_GARANTIA => :P267_NRO_GARANTIA,',
'                      PI_COD_TECNICO => :P267_COD_TECNICO,',
'                      PI_COD_ORIGEN => :P267_COD_ORIGEN,',
'                      PI_IND_SOL_CRED => :P267_IND_SOL_CRED,',
'                      PI_IND_OK_CRED => :P267_IND_OK_CRED,',
'                      PI_IND_NO_CRED => :P267_IND_NO_CRED,',
'                      PI_FECHA_VISITA => :P267_FECHA_VISITA,',
'                      PI_DIRECCION => :P267_DIRECCION,',
'                      PI_TELEFONO => :P267_TELEFONO,  ',
'                      PI_IND_RECLAMO => :P267_IND_RECLAMO,',
'                      PI_IND_ADICIONAL => :P267_IND_ADICIONAL,                                  ',
'                      PI_MONTO_ADICIONAL => :P267_MONTO_ADICIONAL,',
'                      PI_FECHA_FINALIZA => :P267_FECHA_FINALIZA,',
'                      PI_FECHA_COMPRA => :P267_FECHA_COMPRA,',
'                      PI_COD_DISTRIBUIDOR => :P267_COD_DISTRIBUIDOR,',
'                      PI_SERIE_PRODUCTO => :P267_SERIE_PRODUCTO,',
'                      PI_MONTO_COMISION_TECNICO => :P267_MONTO_COMISION_TECNICO);        ',
'    else',
'    		:P267_FECHA_FINALIZA:=null;         ',
'            :P267_AUX_MSJ_CONTROL := ''SELECCIONE UN TECNICO'';            ',
'    END IF;',
'',
'END IF;',
''))
,p_attribute_02=>'P267_COD_EMPRESA,P267_COD_USUARIO,P267_TIPO_ASIST,P267_ESTADO,P267_COD_CLIENTE,P267_COD_ARTICULO,P267_IND_GARANTIA,P267_NRO_COMPROBANTE_REF,P267_TIP_COMPROBANTE_ORT,P267_SER_COMPROBANTE_ORT,P267_NRO_COMPROBANTE_ORT,P267_OBSERVACION,P267_NRO_GARANTIA,'
||'P267_COD_TECNICO,P267_COD_ORIGEN,P267_IND_SOL_CRED,P267_IND_OK_CRED,P267_IND_NO_CRED,P267_FECHA_VISITA,P267_DIRECCION,P267_TELEFONO,P267_IND_RECLAMO,P267_IND_ADICIONAL,P267_MONTO_ADICIONAL,P267_FECHA_FINALIZA,P267_FECHA_COMPRA,P267_COD_DISTRIBUIDOR,P'
||'267_SERIE_PRODUCTO,P267_MONTO_COMISION_TECNICO'
,p_attribute_03=>'P267_FECHA_FINALIZA,P267_MONTO_ADICIONAL,P267_MONTO_COMISION_TECNICO,P267_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108045566657228020)
,p_event_id=>wwv_flow_imp.id(65358853687366242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P267_AUX_MSJ_CONTROL.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75759500327816729)
,p_event_id=>wwv_flow_imp.id(65358853687366242)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P267_FECHA_ALTA,P267_A_OBSERVACION,P267_NRO_ASISTENCIA,P267_TIPO_ASIST,P267_COD_USUARIO,P267_COD_CLIENTE,P267_DIRECCION,P267_TELEFONO,P267_COD_ARTICULO,P267_COD_DISTRIBUIDOR,P267_IND_GARANTIA,P267_NRO_GARANTIA,P267_SER_COMPROBANTE_ORT,P267_NRO_COMPRO'
||'BANTE_ORT,P267_FECHA_VISITA,P267_SERIE_PRODUCTO,P267_COD_ORIGEN,P267_COD_TECNICO,P267_FECHA_FINALIZA,P267_IND_RECLAMO,P267_IND_ADICIONAL,P267_MONTO_COMISION_TECNICO,P267_MONTO_ADICIONAL,P267_IND_NO_CRED,P267_IND_OK_CRED,P267_IND_SOL_CRED,P267_OBSERVA'
||'CION,P267_FECHA_COMPRA,P267_NRO_COMPROBANTE_REF,P267_ESTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75759621356816730)
,p_event_id=>wwv_flow_imp.id(65358853687366242)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64854905906710913)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75759786866816731)
,p_event_id=>wwv_flow_imp.id(65358853687366242)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855064670710914)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75759801684816732)
,p_event_id=>wwv_flow_imp.id(65358853687366242)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64854191340710905)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75759927956816733)
,p_event_id=>wwv_flow_imp.id(65358853687366242)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855184870710915)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75760093166816734)
,p_event_id=>wwv_flow_imp.id(65358853687366242)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(65358706731366241)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75760100576816735)
,p_event_id=>wwv_flow_imp.id(65358853687366242)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64854067136710904)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_AUX_MSJ_CONTROL'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65359059695366244)
,p_name=>'DA_SOLICITAR_CRED'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64854905906710913)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65359100019366245)
,p_event_id=>wwv_flow_imp.id(65359059695366244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P267_IND_SOL_CRED := ''S'' ;',
'    insert into sm_asistencia_seguimiento(cod_empresa, ',
'                                        NRO_ASISTENCIA, ',
'                                        observacion, ',
'                                        FECHA, ',
'                                        USUARIO)',
'			values(:P267_COD_EMPRESA,',
'                   :P267_NRO_ASISTENCIA,',
'                   ''CREDITO SOLICITADO'',',
'                   SYSDATE,',
'                   :P267_COD_USUARIO);',
'	apex_collection.add_member( ',
'                 p_collection_name   => ''COL_SEGUIMIENTO'',',
'                    P_C001 => :P267_COD_EMPRESA,',
'                    P_C002 => :P267_NRO_ASISTENCIA, ',
'                    P_C003 => ''CREDITO SOLICITADO'', ',
'                    P_C004 => sysdate, ',
'                    P_C005 => :P267_COD_USUARIO ,',
'                    p_c030 => ''A'');   													',
'	commit;',
'END;',
''))
,p_attribute_02=>'P267_COD_EMPRESA,P267_NRO_ASISTENCIA,P267_COD_USUARIO'
,p_attribute_03=>'P267_IND_SOL_CRED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66730032995990001)
,p_event_id=>wwv_flow_imp.id(65359059695366244)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64699781033997304)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108044713483228012)
,p_event_id=>wwv_flow_imp.id(65359059695366244)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'CREDITO SOLICITADO'
,p_attribute_02=>'MENSAJE'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65359284013366246)
,p_name=>'DA_APROBAR_CRED'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64855064670710914)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65359346557366247)
,p_event_id=>wwv_flow_imp.id(65359284013366246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' 	:P267_IND_OK_CRED:=''S'';',
' 	',
' 	insert into sm_asistencia_seguimiento(cod_empresa,',
'                                         NRO_ASISTENCIA, ',
'                                         observacion, ',
'                                         FECHA, ',
'                                         USUARIO)',
'		     values(:P267_COD_EMPRESA, ',
'                    :P267_NRO_ASISTENCIA, ',
'                    ''CREDITO APROBADO'', ',
'                    SYSDATE, ',
'                    :P267_COD_USUARIO);',
'     apex_collection.add_member( ',
'                 p_collection_name   => ''COL_SEGUIMIENTO'',',
'                    P_C001 => :P267_COD_EMPRESA,',
'                    P_C002 => :P267_NRO_ASISTENCIA, ',
'                    P_C003 => ''CREDITO APROBADO'', ',
'                    P_C004 => sysdate, ',
'                    P_C005 => :P267_COD_USUARIO ,',
'                    p_c030 => ''A'');',
'															',
'    commit;',
'',
'EXCEPTION',
'            WHEN OTHERS THEN',
unistr('            apex_debug.error(''fallo APROBACI\00D3N DE CR\00C9DITO'');'),
'END;'))
,p_attribute_02=>'P267_COD_EMPRESA,P267_NRO_ASISTENCIA,P267_COD_USUARIO'
,p_attribute_03=>'P267_IND_OK_CRED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66730147546990002)
,p_event_id=>wwv_flow_imp.id(65359284013366246)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64699781033997304)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108044845954228013)
,p_event_id=>wwv_flow_imp.id(65359284013366246)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'CREDITO APROBADO'
,p_attribute_02=>'MENSAJE'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65359445053366248)
,p_name=>'DA_RECHAZAR_CRED'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64855184870710915)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65359588167366249)
,p_event_id=>wwv_flow_imp.id(65359445053366248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    :P267_IND_NO_CRED:=''S'';',
' 	',
' 	insert into sm_asistencia_seguimiento(cod_empresa, ',
'                 NRO_ASISTENCIA, ',
'                 observacion, ',
'                 FECHA, ',
'                 USUARIO)',
'		 values(:P267_COD_EMPRESA, ',
'                 :P267_NRO_ASISTENCIA, ',
'                 ''CREDITO RECHAZADO'', ',
'                 SYSDATE, ',
'                 :P267_COD_USUARIO);',
'	apex_collection.add_member( ',
'                 p_collection_name   => ''COL_SEGUIMIENTO'',',
'                    P_C001 => :P267_COD_EMPRESA,',
'                    P_C002 => :P267_NRO_ASISTENCIA, ',
'                    P_C003 => ''CREDITO RECHAZADO'', ',
'                    P_C004 => sysdate, ',
'                    P_C005 => :P267_COD_USUARIO ,',
'                    p_c030 => ''A'');														',
'     commit;',
'     EXCEPTION',
'            WHEN OTHERS THEN',
unistr('            apex_debug.error(''fallo rechazar el cr\00E9dito'');'),
'end;'))
,p_attribute_02=>'P267_COD_EMPRESA,P267_NRO_ASISTENCIA,P267_COD_USUARIO'
,p_attribute_03=>'P267_IND_NO_CRED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66730249419990003)
,p_event_id=>wwv_flow_imp.id(65359445053366248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64699781033997304)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108044904423228014)
,p_event_id=>wwv_flow_imp.id(65359445053366248)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'CREDITO RECHAZADO'
,p_attribute_02=>'MENSAJE'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66731158361990012)
,p_name=>'DA_PROCESADO'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65358706731366241)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66731225771990013)
,p_event_id=>wwv_flow_imp.id(66731158361990012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	:P267_ESTADO:=''PROC'';',
' 	',
' 	insert into sm_asistencia_seguimiento(cod_empresa,',
'                                      NRO_ASISTENCIA, ',
'                                      observacion, ',
'                                      FECHA, ',
'                                      USUARIO)',
'		  values(:P267_COD_EMPRESA,',
'                :P267_NRO_ASISTENCIA,',
'                ''Asistencia Procesada'',',
'                SYSDATE,',
'                :P267_COD_USUARIO);',
'	apex_collection.add_member( ',
'                 p_collection_name   => ''COL_SEGUIMIENTO'',',
'                    P_C001 => :P267_COD_EMPRESA,',
'                    P_C002 => :P267_NRO_ASISTENCIA, ',
'                    P_C003 => ''ASISTENCIA PROCESADA'', ',
'                    P_C004 => sysdate, ',
'                    P_C005 => :P267_COD_USUARIO ,',
'                    p_c030 => ''A'');															',
' commit;'))
,p_attribute_02=>'P267_COD_EMPRESA,P267_NRO_ASISTENCIA,P267_COD_USUARIO'
,p_attribute_03=>'P267_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108045160517228016)
,p_event_id=>wwv_flow_imp.id(66731158361990012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Asistencia procesada'
,p_attribute_02=>'MENSAJE'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108045277194228017)
,p_event_id=>wwv_flow_imp.id(66731158361990012)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64699781033997304)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67729505034728840)
,p_name=>'DA_HABILITAR/DESAHABILITAR BT'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P267_IND_SOL_CRED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67729600314728841)
,p_event_id=>wwv_flow_imp.id(67729505034728840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64854905906710913)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_SOL_CRED'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67729739039728842)
,p_event_id=>wwv_flow_imp.id(67729505034728840)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64854905906710913)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_SOL_CRED'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68587112653044104)
,p_event_id=>wwv_flow_imp.id(67729505034728840)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855184870710915)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_SOL_CRED'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68587352813044106)
,p_event_id=>wwv_flow_imp.id(67729505034728840)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855184870710915)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_SOL_CRED'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68587223796044105)
,p_event_id=>wwv_flow_imp.id(67729505034728840)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855064670710914)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_SOL_CRED'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68587439883044107)
,p_event_id=>wwv_flow_imp.id(67729505034728840)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855064670710914)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_SOL_CRED'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67729852390728843)
,p_name=>'DA_HAB/DESH BT OK'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P267_IND_OK_CRED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67729949760728844)
,p_event_id=>wwv_flow_imp.id(67729852390728843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855064670710914)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_OK_CRED'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67730193543728846)
,p_event_id=>wwv_flow_imp.id(67729852390728843)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855064670710914)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_OK_CRED'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67730006375728845)
,p_event_id=>wwv_flow_imp.id(67729852390728843)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855184870710915)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_OK_CRED'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67730276188728847)
,p_event_id=>wwv_flow_imp.id(67729852390728843)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855184870710915)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_OK_CRED'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75759155648816725)
,p_event_id=>wwv_flow_imp.id(67729852390728843)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64854905906710913)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_OK_CRED'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75759208753816726)
,p_event_id=>wwv_flow_imp.id(67729852390728843)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64854905906710913)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_OK_CRED'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67730348080728848)
,p_name=>'DA_HAB/DESH BTNS'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P267_IND_NO_CRED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67730440590728849)
,p_event_id=>wwv_flow_imp.id(67730348080728848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64854905906710913)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_NO_CRED'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67730513263728850)
,p_event_id=>wwv_flow_imp.id(67730348080728848)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855064670710914)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_NO_CRED'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68586818810044101)
,p_event_id=>wwv_flow_imp.id(67730348080728848)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855184870710915)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_NO_CRED'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68586918712044102)
,p_event_id=>wwv_flow_imp.id(67730348080728848)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855184870710915)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_NO_CRED'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68587074735044103)
,p_event_id=>wwv_flow_imp.id(67730348080728848)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855064670710914)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_IND_NO_CRED'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(122750669771118026)
,p_name=>'DA_DESHABILITAR_HABILITAR_BT'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122750712019118027)
,p_event_id=>wwv_flow_imp.id(122750669771118026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64854905906710913)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P267_IND_SOL_CRED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122750837513118028)
,p_event_id=>wwv_flow_imp.id(122750669771118026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64854905906710913)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P267_IND_SOL_CRED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122750942751118029)
,p_event_id=>wwv_flow_imp.id(122750669771118026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855064670710914)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P267_IND_OK_CRED'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122751102918118031)
,p_event_id=>wwv_flow_imp.id(122750669771118026)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855064670710914)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P267_IND_OK_CRED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122751016296118030)
,p_event_id=>wwv_flow_imp.id(122750669771118026)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855184870710915)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P267_IND_NO_CRED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122751207450118032)
,p_event_id=>wwv_flow_imp.id(122750669771118026)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855184870710915)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P267_IND_NO_CRED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122751348479118033)
,p_event_id=>wwv_flow_imp.id(122750669771118026)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(65358706731366241)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P267_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(122751491871118034)
,p_event_id=>wwv_flow_imp.id(122750669771118026)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64855184870710915)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P267_ESTADO'
,p_client_condition_expression=>'PROCESADO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66731090670990011)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    SMASISGA.pr_modificar_miembro(PI_SEQ_ID_EDITAR => 1,',
'                  PI_COD_USUARIO => :P267_COD_USUARIO,',
'                  PI_TIPO_ASIST => :P267_TIPO_ASIST, ',
'                  PI_ESTADO => :P267_ESTADO,                                  ',
'                  PI_COD_CLIENTE => :P267_COD_CLIENTE,',
'                  PI_cod_ARTICULO => :P267_COD_ARTICULO,',
'                  PI_IND_GARANTIA => :P267_IND_GARANTIA, ',
'                  PI_NRO_COMPROBANTE_REF => :P267_NRO_COMPROBANTE_REF,',
'                  PI_TIP_COMPROBANTE_ORT => :P267_TIP_COMPROBANTE_ORT,',
'                  PI_SER_COMPROBANTE_ORT => :P267_SER_COMPROBANTE_ORT,',
'                  PI_NRO_COMPROBANTE_ORT => :P267_NRO_COMPROBANTE_ORT,',
'                  PI_OBSERVACION => :P267_OBSERVACION,',
'                  PI_NRO_GARANTIA => :P267_NRO_GARANTIA,',
'                  PI_COD_TECNICO => :P267_COD_TECNICO,',
'                  PI_COD_ORIGEN => :P267_COD_ORIGEN,',
'                  PI_IND_SOL_CRED => :P267_IND_SOL_CRED,',
'                  PI_IND_OK_CRED => :P267_IND_OK_CRED,',
'                  PI_IND_NO_CRED => :P267_IND_NO_CRED,',
'                  PI_FECHA_VISITA => :P267_FECHA_VISITA,',
'                  PI_DIRECCION => :P267_DIRECCION,',
'                  PI_TELEFONO => :P267_TELEFONO,  ',
'                  PI_IND_RECLAMO => :P267_IND_RECLAMO,',
'                  PI_IND_ADICIONAL => :P267_IND_ADICIONAL,                                  ',
'                  PI_MONTO_ADICIONAL => :P267_MONTO_ADICIONAL,',
'                  PI_FECHA_FINALIZA => :P267_FECHA_FINALIZA,',
'                  PI_FECHA_COMPRA => :P267_FECHA_COMPRA,',
'                  PI_COD_DISTRIBUIDOR => :P267_COD_DISTRIBUIDOR,',
'                  PI_SERIE_PRODUCTO => :P267_SERIE_PRODUCTO,',
'                  PI_MONTO_COMISION_TECNICO => :P267_MONTO_COMISION_TECNICO);',
'    SMASISGA.pr_confirmar_accion( ',
'                    PI_COD_EMPRESA => :P267_COD_EMPRESA ,',
'                    PI_NRO_ASISTENCIA => :P267_NRO_ASISTENCIA,                     ',
'                    PI_COD_USUARIO => :P267_COD_USUARIO ,',
'                    PI_ACCION => :P267_ACCION_CAB   );',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108045422065228019)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P267_P_NRO_ASISTENCIA'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64421332524474245)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     ',
'   :P267_COD_USUARIO := NVL(:P_COD_USUARIO, USER);',
'   :P267_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'   :P267_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
'   :P267_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'   :P267_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
'   :P267_COD_MODULO := NVL(:P_COD_MODULO, ''SM'');   ',
'   :P267_AUX_CONTROL_REPORTE := null;',
'   :P267_AUX_MSJ_CONTROL := null;',
'   :P267_A_OBSERVACION := null;',
'   --:P267_P_NRO_ASISTENCIA := 6881;',
'   ',
'if(:P267_P_NRO_ASISTENCIA is null) then --CREAR ASISTENCIA EN sm_asistencia_gastro',
'  :P267_ACCION_CAB := ''A'';',
'  apex_collection.create_or_truncate_collection(p_collection_name => ''COL_SEGUIMIENTO'');',
'  apex_collection.create_or_truncate_collection(p_collection_name => ''COL_ASISTENCIA'');',
'  --PRE-INSERT',
'    :P267_ESTADO:= ''CREA'' ;',
'    :P267_FECHA_ALTA := sysdate ;',
'    ',
'  begin',
'   Select nvl(max(NRO_ASISTENCIA),0)+1',
'     into :P267_NRO_ASISTENCIA',
'     from sm_asistencia_gastro',
'     where cod_empresa     = :P267_COD_EMPRESA;',
'',
'   exception',
'     when others then',
'       :P267_NRO_ASISTENCIA:= 1; ',
'  end; ',
'    apex_collection.add_member(',
'                    p_collection_name   => ''COL_ASISTENCIA'',',
'                    P_C001  => :P267_COD_EMPRESA,',
'                    P_C002 => :P267_NRO_ASISTENCIA, ',
'                    P_C003 => :P267_FECHA_ALTA, ',
'                    P_C004 => :P267_COD_USUARIO,                     ',
'                    P_C006 => :P267_ESTADO,                     ',
'                    P_C030 => :P267_ACCION_CAB                   ',
'',
'                    );            ',
'ELSE',
'   :P267_ACCION_CAB := ''E'';',
'   :P267_NRO_ASISTENCIA := :P267_P_NRO_ASISTENCIA;',
'   SMASISGA.pr_crear_collection_cabecera(:P267_COD_EMPRESA,PI_NRO_ASISTENCIA => :P267_NRO_ASISTENCIA);',
'   SMASISGA.pr_crear_collection_seg(PI_COD_EMPRESA => :P267_COD_EMPRESA,',
'                                    PI_NRO_ASISTENCIA => :P267_NRO_ASISTENCIA);',
'   SMASISGA.pr_cargar(PI_COD_EMPRESA => :P267_COD_EMPRESA,',
'                    PI_NRO_ASISTENCIA => :P267_NRO_ASISTENCIA,',
'                    PO_FECHA_ALTA => :P267_FECHA_ALTA,',
'                    PO_RID => :P267_RID,',
'                    PO_COD_USUARIO => :P267_COD_USUARIO,                    ',
'                    PO_TIPO_ASIST => :P267_TIPO_ASIST,',
'                    PO_ESTADO => :P267_ESTADO,',
'                    PO_COD_CLIENTE => :P267_COD_CLIENTE,',
'                    PO_COD_ARTICULO => :P267_COD_ARTICULO,',
'                    PO_IND_GARANTIA => :P267_IND_GARANTIA,                     ',
'                    PO_NRO_COMPROBANTE_REF => :P267_NRO_COMPROBANTE_REF,',
'                    PO_TIP_COMPROBANTE_ORT => :P267_TIP_COMPROBANTE_ORT,',
'                    PO_SER_COMPROBANTE_ORT => :P267_SER_COMPROBANTE_ORT,',
'                    PO_NRO_COMPROBANTE_ORT => :P267_NRO_COMPROBANTE_ORT,',
'                    PO_OBSERVACION => :P267_OBSERVACION,',
'                    PO_NRO_GARANTIA => :P267_NRO_GARANTIA,',
'                    PO_COD_TECNICO => :P267_COD_TECNICO,',
'                    PO_COD_ORIGEN => :P267_COD_ORIGEN,',
'                    PO_IND_SOL_CRED => :P267_IND_SOL_CRED,',
'                    PO_IND_OK_CRED => :P267_IND_OK_CRED,',
'                    PO_IND_NO_CRED => :P267_IND_NO_CRED,',
'                    PO_FECHA_VISITA => :P267_FECHA_VISITA,                    ',
'                    PO_DIRECCION => :P267_DIRECCION,',
'                    PO_TELEFONO => :P267_TELEFONO,',
'                    PO_IND_RECLAMO => :P267_IND_RECLAMO,',
'                    PO_IND_ADICIONAL => :P267_IND_ADICIONAL,',
'                    PO_MONTO_ADICIONAL => :P267_MONTO_ADICIONAL,',
'                    PO_MONTO_COMISION_TECNICO => :P267_MONTO_COMISION_TECNICO,',
'                    PO_FECHA_FINALIZA => :P267_FECHA_FINALIZA,',
'                    PO_FECHA_COMPRA => :P267_FECHA_COMPRA,',
'                    PO_COD_DISTRIBUIDOR => :P267_COD_DISTRIBUIDOR,',
'                    PO_SERIE_PRODUCTO => :P267_SERIE_PRODUCTO                    ',
'                    );',
'  END IF;',
'  EXCEPTION',
'      WHEN OTHERS THEN',
'      APEX_DEBUG.ERROR(''ERROR EN PR_INIT''|| sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
