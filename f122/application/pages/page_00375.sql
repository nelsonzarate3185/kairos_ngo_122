prompt --application/pages/page_00375
begin
--   Manifest
--     PAGE: 00375
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
 p_id=>375
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCUSDOC'
,p_alias=>'CCCUSDOC'
,p_step_title=>'CCCUSDOC'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_empresa, p_ser_planilla, p_nro_planilla, p_fec_planilla, p_cod_usuario, p_cod_usuario_rec, p_cod_custodio_ent, p_cod_custodio_sal, p_ind_recepcion){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCCUSDOC.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_SER_PLANILLA_DESDE='' + p_ser_planilla  + ''&P_SER_PLANILLA_HASTA=''+ p_ser_planilla ',
'            + ''&P_NRO_PLANILLA_DESDE=''+ p_nro_planilla + ''&P_NRO_PLANILLA_HASTA=''+ p_nro_planilla + ''&P_FEC_PLANILLA_DESDE=''+ p_fec_planilla',
'            + ''&P_FEC_PLANILLA_HASTA=''+ p_fec_planilla + ''&P_COD_USUARIO=''+ p_cod_usuario + ''&P_COD_USUARIO_REC=''+ p_cod_usuario_rec + ''&P_COD_CUSTODIO_ENT=''+ p_cod_custodio_ent+''&P_COD_CUSTODIO_SAL=''+ p_cod_custodio_sal+''&P_IND_RECEPCION=''+ p_ind_re'
||'cepcion+''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230313174157'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111442426472896350)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112095972697781131)
,p_plug_name=>'Movimiento de documentos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112096142584781133)
,p_plug_name=>'DETALLE_ABM_HABILITADO'
,p_parent_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id P_ID,',
'    C001 COD_EMPRESA,',
'    C002 SER_PLANILLA,',
'    C003 NRO_PLANILLA,',
'    C004 TIP_COMPROBANTE,',
'    C005 SER_COMPROBANTE,',
'    C006 NRO_COMPROBANTE,',
'    C007 NRO_CUOTA,',
'    C008 FEC_CARGA,',
'    C009 IMPORTE         ,',
'    C010 COD_PER_JURIDICA,',
'    C011 COD_MONEDA,',
'    C012 TIP_CAMBIO,',
'    C013 COD_CLIENTE,',
'    C014 TIP_ORIGEN,',
'    C015 NRO_VALOR,',
'    C016 ANULADO,',
'    C017 TIP_REFERENCIA,',
'    C018 ROW_ID,',
'    C019 SER_REFERENCIIA,',
'    C020 NRO_REFERENCIA,',
'    C021 SER_REFERENCIA,  ',
'    C023 COD_CUSTODIO,',
'    C024 COMENTARIO,',
'    C025 COD_SECTOR,',
'    C026 NRO_ORDEN,',
'    C027 IND_RECEPCION_DET,',
'    C028 ESTADO_COBRO,',
'    null editar,',
'    null eliminar,',
'    null ver',
'',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DETALLE''',
'AND NVL(C030,''P'') <> ''B''',
'AND nvl(:P375_IND_RECEPCION,''P'') <> ''S'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P375_IND_RECEPCION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE_ABM_HABILITADO'
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
 p_id=>wwv_flow_imp.id(112224895245227441)
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
,p_internal_uid=>112224895245227441
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112224900432227442)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112225034376227443)
,p_db_column_name=>'SER_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112225180651227444)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112225375233227446)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112225467781227447)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112225523366227448)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Cuota'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112225666696227449)
,p_db_column_name=>'FEC_CARGA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Carga'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112225787630227450)
,p_db_column_name=>'IMPORTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113328351482698401)
,p_db_column_name=>'COD_PER_JURIDICA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Per Juridica'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(113440174009956087)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113328427046698402)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113328587987698403)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Tip Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113328645587698404)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113328771620698405)
,p_db_column_name=>'TIP_ORIGEN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113328846038698406)
,p_db_column_name=>'NRO_VALOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nro Valor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113328949213698407)
,p_db_column_name=>'ANULADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113329066800698408)
,p_db_column_name=>'TIP_REFERENCIA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tip Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113329172713698409)
,p_db_column_name=>'ROW_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113329223243698410)
,p_db_column_name=>'SER_REFERENCIIA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Ser Referenciia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113329315594698411)
,p_db_column_name=>'NRO_REFERENCIA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113329477656698412)
,p_db_column_name=>'SER_REFERENCIA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Ser Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113329531385698413)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113329652999698414)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113329796082698415)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113329831547698416)
,p_db_column_name=>'NRO_ORDEN'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Nro Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113329920164698417)
,p_db_column_name=>'IND_RECEPCION_DET'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Ind Recepcion Det'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113373481819759001)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113373729250759004)
,p_db_column_name=>'ESTADO_COBRO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Estado Cobro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113374405855759011)
,p_db_column_name=>'EDITAR'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P375_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113374504690759012)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P375_SEQ_ID_ELIMINAR'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113374671227759013)
,p_db_column_name=>'VER'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P375_SEQ_ID_DETALLE'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113375944514759026)
,p_db_column_name=>'P_ID'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(113352456922704272)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1133525'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:NRO_ORDEN:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_CUOTA:NRO_VALOR:COD_PER_JURIDICA:COD_MONEDA:COD_CLIENTE:IMPORTE:ESTADO_COBRO:COD_SECTOR:VER:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112220930622227402)
,p_plug_name=>'CABECERA 1'
,p_parent_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>180
,p_plug_grid_column_span=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112221061851227403)
,p_plug_name=>'CABECERA2'
,p_parent_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>190
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112221195102227404)
,p_plug_name=>'CABECERA3'
,p_parent_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>200
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112221290541227405)
,p_plug_name=>'CABECERA3'
,p_parent_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>210
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112224557496227438)
,p_plug_name=>'DETALLE_ABM_DESHABILITADO'
,p_parent_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id P_ID,',
'    C001 COD_EMPRESA,',
'    C002 SER_PLANILLA,',
'    C003 NRO_PLANILLA,',
'    C004 TIP_COMPROBANTE,',
'    C005 SER_COMPROBANTE,',
'    C006 NRO_COMPROBANTE,',
'    C007 NRO_CUOTA,',
'    C008 FEC_CARGA,',
'    C009 IMPORTE         ,',
'    C010 COD_PER_JURIDICA,',
'    C011 COD_MONEDA,',
'    C012 TIP_CAMBIO,',
'    C013 COD_CLIENTE,',
'    C014 TIP_ORIGEN,',
'    C015 NRO_VALOR,',
'    C016 ANULADO,',
'    C017 TIP_REFERENCIA,',
'    C018 ROW_ID,',
'    C019 SER_REFERENCIIA,',
'    C020 NRO_REFERENCIA,',
'    C021 SER_REFERENCIA,  ',
'    C023 COD_CUSTODIO,',
'    C024 COMENTARIO,',
'    C025 COD_SECTOR,',
'    C026 NRO_ORDEN,',
'    C027 IND_RECEPCION_DET,',
'    C028 ESTADO_COBRO,',
'    c029 persona_juridica,',
'    null ver',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DETALLE''',
'AND NVL(C030,''P'') <> ''B''',
'AND :P375_IND_RECEPCION = ''S'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P375_IND_RECEPCION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE_ABM_DESHABILITADO'
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
 p_id=>wwv_flow_imp.id(113330004667698418)
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
,p_internal_uid=>113330004667698418
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113330173335698419)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113330208956698420)
,p_db_column_name=>'SER_PLANILLA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113330378007698421)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113330531063698423)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113330609710698424)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113330722675698425)
,p_db_column_name=>'NRO_CUOTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Cuota'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113330876719698426)
,p_db_column_name=>'FEC_CARGA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Carga'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113330934543698427)
,p_db_column_name=>'IMPORTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Importe'
,p_column_type=>'STRING'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113331038471698428)
,p_db_column_name=>'COD_PER_JURIDICA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Banco'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(113440174009956087)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113331109947698429)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113331251488698430)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Tip Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113331352263698431)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113331444069698432)
,p_db_column_name=>'TIP_ORIGEN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tip Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113331570093698433)
,p_db_column_name=>'NRO_VALOR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nro Valor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113331682900698434)
,p_db_column_name=>'ANULADO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113331758812698435)
,p_db_column_name=>'TIP_REFERENCIA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tip Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113331858652698436)
,p_db_column_name=>'ROW_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113331917506698437)
,p_db_column_name=>'SER_REFERENCIIA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Ser Referenciia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113332059898698438)
,p_db_column_name=>'NRO_REFERENCIA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nro Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113332153500698439)
,p_db_column_name=>'SER_REFERENCIA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Ser Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113332267112698440)
,p_db_column_name=>'COD_CUSTODIO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Custodio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113332388556698441)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113332467169698442)
,p_db_column_name=>'COD_SECTOR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Cod Sector'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113332567663698443)
,p_db_column_name=>'NRO_ORDEN'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Nro Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113332652932698444)
,p_db_column_name=>'IND_RECEPCION_DET'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Ind Recepcion Det'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113373599703759002)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113373602261759003)
,p_db_column_name=>'ESTADO_COBRO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Estado Cobro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(113374308397759010)
,p_db_column_name=>'PERSONA_JURIDICA'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Persona Juridica'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117385292018966130)
,p_db_column_name=>'VER'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P375_SEQ_ID_DETALLE'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(117385343174966131)
,p_db_column_name=>'P_ID'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(113353046516704281)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1133531'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'VER:NRO_ORDEN:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_CUOTA:NRO_VALOR:COD_PER_JURIDICA:COD_MONEDA:COD_CLIENTE:IMPORTE:ESTADO_COBRO:COD_SECTOR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112096085898781132)
,p_plug_name=>'AGREGAR/EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112221324522227406)
,p_plug_name=>'PIE_CABECERA'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112221663781227409)
,p_plug_name=>'PIE3'
,p_parent_plug_id=>wwv_flow_imp.id(112221324522227406)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112222047973227413)
,p_plug_name=>'PIE0'
,p_parent_plug_id=>wwv_flow_imp.id(112221324522227406)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112221421214227407)
,p_plug_name=>'PIE1'
,p_parent_plug_id=>wwv_flow_imp.id(112222047973227413)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112221537253227408)
,p_plug_name=>'PIE2'
,p_parent_plug_id=>wwv_flow_imp.id(112222047973227413)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112223452193227427)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1050
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(113373813260759005)
,p_plug_name=>'ITEMS DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1040
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112097663492781148)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(112221195102227404)
,p_button_name=>'BT_RECEPCIONAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Recepcionar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116197494795991406)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_button_name=>'bt_cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116197273985991404)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_button_name=>'bt_aceptar_crear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116197343096991405)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_button_name=>'bt_aceptar_editar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116200921098991441)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_button_name=>'BT_IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'IMPRIMIR'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116197058904991402)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_button_name=>'bt_salir'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Salir'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:397:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116200802005991440)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                   ppage_id => :APP_PAGE_ID,',
'                                                papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(113333283236698450)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(112096142584781133)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112092963629781101)
,p_name=>'P375_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112093078660781102)
,p_name=>'P375_FILTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112221290541227405)
,p_prompt=>'Filtrar planillas'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Pendientes;N,Recepcion;S,Todas'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112093265830781104)
,p_name=>'P375_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112093387733781105)
,p_name=>'P375_COD_CUSTODIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112093474321781106)
,p_name=>'P375_COD_CUSTODIO_ALT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112093585118781107)
,p_name=>'P375_NOM_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112093664593781108)
,p_name=>'P375_COD_FORMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112093750854781109)
,p_name=>'P375_EFECTIVO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112093872357781110)
,p_name=>'P375_NOM_FORMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112093942549781111)
,p_name=>'P375_COD_MONEDA_BASE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112094020369781112)
,p_name=>'P375_COD_MONEDA_DOL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112094168926781113)
,p_name=>'P375_COD_EMPRESA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112094200602781114)
,p_name=>'P375_TIPO_CHEQUE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112094302313781115)
,p_name=>'P375_TIPO_TRANSLADO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112094479695781116)
,p_name=>'P375_NOM_EMPRESA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112094598227781117)
,p_name=>'P375_COD_SUCURSAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112094672908781118)
,p_name=>'P375_NOM_SUCURSAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112094754886781119)
,p_name=>'P375_COD_USUARIO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112094896924781120)
,p_name=>'P375_COD_IDIOMA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112094946791781121)
,p_name=>'P375_CODSISMENU'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112095065369781122)
,p_name=>'P375_TIPO_TRANS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112095182637781123)
,p_name=>'P375_SER_RECIBO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112095282316781124)
,p_name=>'P375_TIP_ANTERIOR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112095382101781125)
,p_name=>'P375_SER_PLANILLA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112095544238781127)
,p_name=>'P375_FEC_ACTUAL'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112095605760781128)
,p_name=>'P375_RGB'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112096264158781134)
,p_name=>'P375_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112220930622227402)
,p_prompt=>'Nro Planilla'
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
 p_id=>wwv_flow_imp.id(112096381925781135)
,p_name=>'P375_FEC_PLANILLA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112220930622227402)
,p_prompt=>'Fec Planilla'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112096417345781136)
,p_name=>'P375_COD_MONEDA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112096500670781137)
,p_name=>'P375_COD_CUSTODIO_SAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112221061851227403)
,p_prompt=>'Enviado por'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVCUSTODIOSSAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_custodio||'' - ''||c.descripcion D, c.cod_custodio R',
'from usuarios_custodios u, cc_custodios c ',
'where u.cod_empresa = :P_COD_EMPRESA',
'and u.cod_usuario = :P375_COD_USUARIO ',
'and u.cod_empresa = c.cod_empresa ',
'and u.cod_custodio = c.cod_custodio ',
'and u.cod_custodio <> :P375_COD_CUSTODIO',
'union all ',
'select c.cod_custodio||'' - ''||c.descripcion D, c.cod_custodio R',
'from cc_custodios c ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_custodio = :P375_COD_CUSTODIO',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(112096644515781138)
,p_name=>'P375_COD_CUSTODIO_ENT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(112221061851227403)
,p_prompt=>'Enviado a'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVCUSTODIOSENT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cod_custodio ||'' - ''||descripcion D, cod_custodio R ',
'from cc_custodios ',
'where cod_empresa = :P_COD_EMPRESA',
'and (:P375_COD_CUSTODIO_SAL is null ',
'or cod_custodio <> :P375_COD_CUSTODIO_SAL )',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(112096723949781139)
,p_name=>'P375_SERIE_RECOMENADA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(112221061851227403)
,p_prompt=>'Serie Recomenada'
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
 p_id=>wwv_flow_imp.id(112096846074781140)
,p_name=>'P375_TOT_PLANILLA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112096912299781141)
,p_name=>'P375_TOT_PLANILLA_GS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(112221663781227409)
,p_prompt=>'Total Gs'
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(112097079812781142)
,p_name=>'P375_TOT_PLANILLA_US'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(112221663781227409)
,p_prompt=>'Total U$S'
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
 p_id=>wwv_flow_imp.id(112097129208781143)
,p_name=>'P375_FEC_RECEPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112221195102227404)
,p_prompt=>'Fec Recepcion'
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
 p_id=>wwv_flow_imp.id(112097259388781144)
,p_name=>'P375_COD_USUARIO_REC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112097339602781145)
,p_name=>'P375_TIP_CAMBIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112097493340781146)
,p_name=>'P375_IND_RECEPCION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112097556374781147)
,p_name=>'P375_HORA_RECEPCION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112097703217781149)
,p_name=>'P375_FACTURA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(112095972697781131)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112097805659781150)
,p_name=>'P375_FECHA_ALTA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(112221537253227408)
,p_prompt=>'Fecha Alta'
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
 p_id=>wwv_flow_imp.id(112220856584227401)
,p_name=>'P375_COD_USUARIO_ALTA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(112221537253227408)
,p_prompt=>'Cod Usuario Alta'
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
 p_id=>wwv_flow_imp.id(112221782807227410)
,p_name=>'P375_DET_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112222047973227413)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112221833338227411)
,p_name=>'P375_DET_DESC_MONEDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112221421214227407)
,p_prompt=>'Moneda'
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
 p_id=>wwv_flow_imp.id(112221997660227412)
,p_name=>'P375_DET_DESC_SECTOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(112221421214227407)
,p_prompt=>'Sector'
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
 p_id=>wwv_flow_imp.id(112222189797227414)
,p_name=>'P375_DET_CANTIDAD_TOTAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(112221663781227409)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(112222234520227415)
,p_name=>'P375_A_TIP_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Tip Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVTIPOSCOMP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tip_comprobante||'' - ''||descripcion D, tip_comprobante T, tip_origen ',
'from tipos_comprobantes ',
'where cod_empresa = :P_COD_EMPRESA',
'and tip_origen is not null order by 1'))
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112222331061227416)
,p_name=>'P375_A_NRO_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Nro Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVPAGARES_NRO_COMPROBANTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sal.nro_comprobante) nro_comprobante, sal.nro_valor, sal.nro_cuota, sal.tipo_comprobante, sal.ser_comprobante, nvl(rtrim(p.nombre ), ltrim(p.nomb_fantasia) )nombre, c.cod_cliente, sal.saldo_cuota, null cod_per_juridica ',
'from cc_saldos sal, cc_clientes c, personas p ',
'where sal.cod_empresa = :P_COD_EMPRESA',
'and sal.monto_cuota > 0 ',
'and sal.monto_cuota = sal.saldo_cuota ',
'and nvl( sal.tipo_comprobante,''DFL'' ) = :P375_A_TIP_COMPROBANTE',
'and sal.ser_comprobante = :P375_A_SER_COMPROBANTE ',
'and sal.cod_custodio = :P375_COD_CUSTODIO_SAL ',
'and sal.cod_empresa = c.cod_empresa ',
'and sal.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'union all ',
'select sal.nro_valor, null, 0, sal.tip_documento, sal.ser_documento, nvl(rtrim(p.nombre ), ltrim( p.nomb_fantasia ) ) nombre, c.cod_cliente, sal.monto_valor, sal.cod_per_juridica ',
'from cc_valores sal, cc_clientes c, personas p ',
'where sal.cod_empresa = :P_COD_EMPRESA',
'and nvl(sal.estado_valor,''P'') in ( ''P'',''R'') ',
'and sal.cod_custodio = :P375_COD_CUSTODIO_SAL',
'and sal.tip_documento = :P375_A_TIP_COMPROBANTE',
'and sal.ser_documento = :P375_A_SER_COMPROBANTE',
'and sal.cod_empresa = c.cod_empresa ',
'and sal.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'and sal.nro_comprobante is null ',
'order by 1;'))
,p_lov_cascade_parent_items=>'P375_A_SER_COMPROBANTE'
,p_ajax_items_to_submit=>'P375_A_SER_COMPROBANTE,P375_A_TIP_COMPROBANTE,P375_COD_CUSTODIO_SAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112222469575227417)
,p_name=>'P375_A_SER_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Ser Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVPAGARES_SER_COMPROBANTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sal.nro_comprobante) nro_comprobante, sal.nro_valor, sal.nro_cuota, sal.tipo_comprobante, sal.ser_comprobante, nvl(rtrim(p.nombre ), ltrim(p.nomb_fantasia) )nombre, c.cod_cliente, sal.saldo_cuota, null cod_per_juridica ',
'from cc_saldos sal, cc_clientes c, personas p ',
'where sal.cod_empresa = :P_COD_EMPRESA',
'and sal.monto_cuota > 0 ',
'and sal.monto_cuota = sal.saldo_cuota ',
'and nvl( sal.tipo_comprobante,''DFL'' ) = :P375_A_TIP_COMPROBANTE ',
'and sal.cod_custodio = :P375_COD_CUSTODIO_SAL ',
'and sal.cod_empresa = c.cod_empresa ',
'and sal.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'union all ',
'select sal.nro_valor, null, 0, sal.tip_documento, sal.ser_documento, nvl(rtrim(p.nombre ), ltrim( p.nomb_fantasia ) ) nombre, c.cod_cliente, sal.monto_valor, sal.cod_per_juridica ',
'from cc_valores sal, cc_clientes c, personas p ',
'where sal.cod_empresa = :P_COD_EMPRESA',
'and nvl(sal.estado_valor,''P'') in ( ''P'',''R'') ',
'and sal.cod_custodio = :P375_COD_CUSTODIO_SAL',
'and sal.tip_documento = :P375_A_TIP_COMPROBANTE',
'and sal.cod_empresa = c.cod_empresa ',
'and sal.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'and sal.nro_comprobante is null ',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P375_A_TIP_COMPROBANTE'
,p_ajax_items_to_submit=>'P375_A_TIP_COMPROBANTE,P375_COD_CUSTODIO_SAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112223557102227428)
,p_name=>'P375_P_NRO_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112223452193227427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113375490880759021)
,p_name=>'P375_SEQ_ID_EDITAR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113375727868759024)
,p_name=>'P375_SEQ_ID_ELIMINAR'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113375801693759025)
,p_name=>'P375_SEQ_ID_DETALLE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113376389855759030)
,p_name=>'P375_A_NRO_ORDEN'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Nro Orden'
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
 p_id=>wwv_flow_imp.id(113376458897759031)
,p_name=>'P375_A_NRO_CUOTA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Nro Cuota'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sal.nro_cuota ||'' Cuota/s'' D, sal.nro_cuota R',
'from cc_saldos sal, cc_clientes c, personas p ',
'where sal.cod_empresa = :P_COD_EMPRESA',
'and sal.monto_cuota > 0 ',
'and sal.monto_cuota = sal.saldo_cuota ',
'and nvl( sal.tipo_comprobante,''DFL'' ) = :P375_A_TIP_COMPROBANTE ',
'and sal.cod_custodio = :P375_COD_CUSTODIO_SAL ',
'and sal.ser_comprobante = :P375_A_SER_COMPROBANTE',
'and sal.nro_comprobante = :P375_A_NRO_COMPROBANTE',
'and sal.cod_empresa = c.cod_empresa ',
'and sal.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'union all ',
'select 0 ||'' Cuota/s'' D, 0 R',
'from cc_valores sal, cc_clientes c, personas p ',
'where sal.cod_empresa = :P_COD_EMPRESA',
'and nvl(sal.estado_valor,''P'') in ( ''P'',''R'') ',
'and sal.cod_custodio = :P375_COD_CUSTODIO_SAL',
'and sal.ser_documento = :P375_A_SER_COMPROBANTE',
'and sal.nro_valor = :P375_A_NRO_COMPROBANTE',
'AND sal.tip_documento = :P375_A_TIP_COMPROBANTE',
'and sal.cod_empresa = c.cod_empresa ',
'and sal.cod_cliente = c.cod_cliente ',
'and c.cod_persona = p.cod_persona ',
'--and sal.nro_comprobante is null ',
'order by 1'))
,p_lov_cascade_parent_items=>'P375_A_NRO_COMPROBANTE'
,p_ajax_items_to_submit=>'P375_A_NRO_COMPROBANTE,P375_A_SER_COMPROBANTE,P375_A_TIP_COMPROBANTE,P375_COD_CUSTODIO_SAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113376563530759032)
,p_name=>'P375_A_NRO_VALOR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Nro Valor'
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
 p_id=>wwv_flow_imp.id(113376612040759033)
,p_name=>'P375_A_COD_PER_JURIDICA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Persona Juridica'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_per_juridica ||'' - ''||nvl(rtrim(p.nombre ), ltrim(p.nomb_fantasia) ) nombre, c.cod_per_juridica R',
'from cc_valores c, personas p ',
'where c.cod_empresa = :P375_COD_EMPRESA',
'and tip_documento = :P375_A_TIP_COMPROBANTE ',
'and ser_documento = :P375_A_SER_COMPROBANTE ',
'and nro_valor = :P375_A_NRO_VALOR ',
'and nvl(estado_valor,''P'') in (''P'',''R'') ',
'and c.cod_per_juridica = p.cod_persona ',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(113376767638759034)
,p_name=>'P375_A_COD_MONEDA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Cod Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVMONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MONEDA R, ',
'	   SIGLAS, ',
'	   TIPO_CAMBIO_DIA, ',
'	   DESCRIPCION D',
'  FROM MONEDAS ',
' ORDER BY DESCRIPCION'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113376878821759035)
,p_name=>'P375_A_COD_CLIENTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Cod Cliente'
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
 p_id=>wwv_flow_imp.id(113376955546759036)
,p_name=>'P375_A_IMPORTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Importe'
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
 p_id=>wwv_flow_imp.id(113377009532759037)
,p_name=>'P375_A_ESTADO_COBRO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(113377169662759038)
,p_name=>'P375_A_COD_SECTOR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Cod Sector'
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
 p_id=>wwv_flow_imp.id(113377218373759039)
,p_name=>'P375_A_COMENTARIO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116196992893991401)
,p_name=>'P375_A_NOM_CLIENTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(116198660977991418)
,p_name=>'P375_A_SER_PLANILLA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116198743135991419)
,p_name=>'P375_A_IND_RECEPCION_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116198855784991420)
,p_name=>'P375_A_IMPORTE_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116198920472991421)
,p_name=>'P375_A_IMPORTE_ANT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(116199044945991422)
,p_name=>'P375_A_TIP_ORIGEN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116199180061991423)
,p_name=>'P375_A_OTROS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116199210911991424)
,p_name=>'P375_A_COD_MONEDA_ANT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116199426836991426)
,p_name=>'P375_ACCION_CAB'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116199571294991427)
,p_name=>'P375_ROW_ID_CAB'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117382755475966105)
,p_name=>'P375_A_TIP_CAMBIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112096085898781132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117383414356966112)
,p_name=>'P375_AUX_MSJ_CONTROL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(111442426472896350)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(117383708875966115)
,p_name=>'P375_TIPO_CARGA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(112221061851227403)
,p_prompt=>'Tipo Carga'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:LECTOR;L,MANUAL;M,RECEPCION LECTOR;R'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112224183508227434)
,p_name=>'DA_VALIDAR_CUS_SAL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P375_COD_CUSTODIO_SAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112224208686227435)
,p_event_id=>wwv_flow_imp.id(112224183508227434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P375_COD_CUSTODIO_ALT <> ''/'' then',
'  if nvl(:P375_COD_CUSTODIO_SAL,''DFL'') = nvl(:P375_COD_CUSTODIO_ENT,''DFL'') then',
'   raise_application_error(-20201,''El custodio de origen debe ser distinto al de destino.'');  ',
' end if ;',
'end if ;'))
,p_attribute_02=>'P375_COD_CUSTODIO_ALT,P375_COD_CUSTODIO_SAL,P375_COD_CUSTODIO_ENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112224365950227436)
,p_name=>'DA_VALIDAR_CUS_ENT'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P375_COD_CUSTODIO_ENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(112224491492227437)
,p_event_id=>wwv_flow_imp.id(112224365950227436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P375_COD_CUSTODIO_SAL = nvl( :P375_COD_CUSTODIO_ENT, ''DFL'' ) then',
'       raise_application_error(-20201,''El custodio de origen debe ser distinto al de destino.''); ',
' end if ;'))
,p_attribute_02=>'P375_COD_CUSTODIO_SAL,P375_COD_CUSTODIO_ENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112224683682227439)
,p_name=>'DA_RECEPCION'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(112097663492781148)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113374981662759016)
,p_event_id=>wwv_flow_imp.id(112224683682227439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if nvl(:P375_IND_RECEPCION,''N'') <> ''S'' then',
'      :P375_IND_RECEPCION := ''S'' ;',
'      :P375_FEC_RECEPCION:= sysdate ;',
'      :P375_COD_USUARIO_REC := :P375_COD_USUARIO ;',
'      :P375_HORA_RECEPCION := to_char(sysdate,''HH24:MI:SS'');',
'    end if ;',
'end;'))
,p_attribute_02=>'P375_IND_RECEPCION,P375_COD_USUARIO'
,p_attribute_03=>'P375_IND_RECEPCION,P375_FEC_RECEPCION,P375_COD_USUARIO_REC,P375_HORA_RECEPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113375010174759017)
,p_event_id=>wwv_flow_imp.id(112224683682227439)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096142584781133)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113375170192759018)
,p_event_id=>wwv_flow_imp.id(112224683682227439)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112224557496227438)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113375309022759020)
,p_event_id=>wwv_flow_imp.id(112224683682227439)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112224557496227438)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113332780195698445)
,p_name=>'DA_OCULTAR_REGION'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113332806854698446)
,p_event_id=>wwv_flow_imp.id(113332780195698445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112224557496227438)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P375_IND_RECEPCION'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113333016721698448)
,p_event_id=>wwv_flow_imp.id(113332780195698445)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096142584781133)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P375_IND_RECEPCION'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113332979785698447)
,p_event_id=>wwv_flow_imp.id(113332780195698445)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096142584781133)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P375_IND_RECEPCION'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113333146916698449)
,p_event_id=>wwv_flow_imp.id(113332780195698445)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112224557496227438)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P375_IND_RECEPCION'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113374726285759014)
,p_name=>'DA_CALCULAR'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113374832556759015)
,p_event_id=>wwv_flow_imp.id(113374726285759014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' select count(seq_id)',
' Into :P375_DET_CANTIDAD_TOTAL',
' FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE'';',
'EXCEPTION',
'  WHEN NO_DATA_FOUND  THEN',
'  :P375_DET_CANTIDAD_TOTAL := 0;',
'END;'))
,p_attribute_03=>'P375_DET_CANTIDAD_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(113376070934759027)
,p_name=>'DA_ABRIR_AGREGAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(113333283236698450)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116198127967991413)
,p_event_id=>wwv_flow_imp.id(113376070934759027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P375_A_TIP_COMPROBANTE,P375_A_SER_COMPROBANTE,P375_A_NRO_COMPROBANTE,P375_A_NRO_CUOTA,P375_A_NRO_VALOR,P375_A_COD_PER_JURIDICA,P375_A_COD_MONEDA,P375_A_COD_CLIENTE,P375_A_NOM_CLIENTE,P375_A_IMPORTE,P375_A_ESTADO_COBRO,P375_A_COD_SECTOR,P375_A_COMENTA'
||'RIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113377382962759040)
,p_event_id=>wwv_flow_imp.id(113376070934759027)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CANT_REGISTROS NUMBER;',
'V_MAX_NRO_ORDEN NUMBER;',
'BEGIN',
'    V_CANT_REGISTROS := APEX_COLLECTION.COLLECTION_MEMBER_COUNT(p_collection_name => ''COL_DETALLE'');',
'    :P375_A_TIP_COMPROBANTE := :P375_TIP_ANTERIOR ;',
'    if NVL(V_CANT_REGISTROS,0) = 0 THEN',
'        :P375_A_NRO_ORDEN  := 1;',
'    ELSE',
'        :P375_A_NRO_ORDEN := V_CANT_REGISTROS + 1;',
'        SELECT MAX(C026)',
'        INTO V_MAX_NRO_ORDEN',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME  = ''COL_DETALLE'';',
'        IF V_MAX_NRO_ORDEN = :P375_A_NRO_ORDEN THEN',
'            :P375_A_NRO_ORDEN := V_MAX_NRO_ORDEN +1 ;        ',
'        END IF;',
'    END IF;',
'END;'))
,p_attribute_02=>'P375_TIP_ANTERIOR'
,p_attribute_03=>'P375_A_TIP_COMPROBANTE,P375_A_NRO_ORDEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(113376125841759028)
,p_event_id=>wwv_flow_imp.id(113376070934759027)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096085898781132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116197980691991411)
,p_event_id=>wwv_flow_imp.id(113376070934759027)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(116197273985991404)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116198078391991412)
,p_event_id=>wwv_flow_imp.id(113376070934759027)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(116197343096991405)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116197522074991407)
,p_name=>'da_cerrar_agregar'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116197494795991406)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116197610680991408)
,p_event_id=>wwv_flow_imp.id(116197522074991407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096085898781132)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116197706915991409)
,p_name=>'DA_DESACTIVAR_BT_RECEPCIOAR'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(112097663492781148)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116197838253991410)
,p_event_id=>wwv_flow_imp.id(116197706915991409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(112097663492781148)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P375_P_NRO_PLANILLA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117385130522966129)
,p_event_id=>wwv_flow_imp.id(116197706915991409)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(112097663492781148)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P375_IND_RECEPCION'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116198420712991416)
,p_name=>'DA_VALIDAR_NRO_COMPROBANTE'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P375_A_NRO_COMPROBANTE'
,p_condition_element=>'P375_A_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116198575143991417)
,p_event_id=>wwv_flow_imp.id(116198420712991416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     CCCUSDOC.pr_validar_nro_comprobante( ',
'                    PI_NRO_CUOTA => to_number(:P375_A_NRO_CUOTA),',
'                    PI_cod_empresa => :P375_COD_EMPRESA,',
'                    PI_COD_USUARIO => :P375_COD_USUARIO,',
'                    PI_COD_CUSTODIO_SAL => :P375_COD_CUSTODIO_SAL,',
'                    PI_TIP_COMPROBANTE => :P375_A_TIP_COMPROBANTE,',
'                    PI_SER_COMPROBANTE => :P375_A_SER_COMPROBANTE,',
'                    PI_NRO_COMPROBANTE => to_number(:P375_A_NRO_COMPROBANTE),',
'                    PI_OTROS => :P375_A_OTROS,',
'                    PI_NRO_VALOR => :P375_A_NRO_VALOR,',
'                    PI_COD_MONEDA_BASE => :P375_COD_MONEDA_BASE,',
'                    PI_COD_MONEDA => :P375_A_COD_MONEDA,',
'                    PI_TIP_CAMBIO_CAB =>to_number(:P375_TIP_CAMBIO),',
'                    PI_COD_MONEDA_ANT  => :P375_A_COD_MONEDA_ANT,',
'                    PI_CAB_TOT_PLANILLA_GS => to_number(:P375_TOT_PLANILLA_GS),',
'                    PI_CAB_TOT_PLANILLA_US => to_number(:P375_TOT_PLANILLA_US),',
'                    PI_IMPORTE_ANT => to_number(:P375_A_IMPORTE_ANT),               ',
'                    PI_CAB_TOT_PLANILLA => to_number(:P375_TOT_PLANILLA),',
'                   PO_COD_MONEDA_ANT => :P375_A_COD_MONEDA_ANT,',
'                    PO_IMPORTE_TOTAL => :P375_A_IMPORTE_TOTAL,',
'                    PO_CAB_TOT_PLANILLA_GS => :P375_TOT_PLANILLA_GS,',
'                    PO_CAB_TOT_PLANILLA_US => :P375_TOT_PLANILLA_US,',
'                    PO_CAB_TOT_PLANILLA => :P375_TOT_PLANILLA,',
'                    PO_IMPORTE_ANT => :P375_A_IMPORTE_ANT,',
'                    PO_TIP_ORIGEN => :P375_A_TIP_ORIGEN, ',
'                    PO_NOM_CLIENTE => :P375_A_NOM_CLIENTE,',
'                    PO_COD_CLIENTE => :P375_A_COD_CLIENTE,',
'                    PO_IMPORTE => :P375_A_IMPORTE,',
'                    PO_COD_MONEDA => :P375_A_COD_MONEDA,',
'                    PO_COD_PER_JURIDICA => :P375_A_COD_PER_JURIDICA,',
'                    PO_NRO_CUOTA => :P375_A_NRO_CUOTA,',
'                    ',
'                    PO_COD_CUSTODIO => :P375_COD_CUSTODIO,',
'                    PO_NRO_VALOR => :P375_A_NRO_VALOR,',
'                    PO_TIP_CAMBIO => :P375_TIP_CAMBIO,',
'                    PO_COD_SECTOR => :P375_A_COD_SECTOR',
'                    /**/);',
'   /* APEX_DEBUG.ERROR(''P375_A_NRO_CUOTA: ''||:P375_A_NRO_CUOTA||',
'    '' P375_COD_EMPRESA: ''||:P375_COD_EMPRESA ||',
'    ''  P375_COD_USUARIO: ''||:P375_COD_USUARIO ||',
'    ''  P375_COD_CUSTODIO_SAL: ''||:P375_COD_CUSTODIO_SAL ||',
'    ''  P375_A_TIP_COMPROBANTE: ''||:P375_A_TIP_COMPROBANTE ||',
'    ''  P375_A_SER_COMPROBANTE: ''|| :P375_A_SER_COMPROBANTE||',
'    ''  P375_A_NRO_COMPROBANTE: ''|| :P375_A_NRO_COMPROBANTE||',
'    ''  P375_A_OTROS: ''||:P375_A_OTROS ||',
'    ''  P375_A_NRO_VALOR: ''||:P375_A_NRO_VALOR ||',
'    ''  P375_COD_MONEDA_BASE: ''||:P375_COD_MONEDA_BASE ||',
'    ''  P375_A_COD_MONEDA: ''||:P375_A_COD_MONEDA ||',
'    ''  P375_TIP_CAMBIO: ''|| :P375_TIP_CAMBIO||',
'    ''  P375_A_COD_MONEDA_ANT: ''||:P375_A_COD_MONEDA_ANT ||',
'    ''  P375_TOT_PLANILLA_GS: ''||:P375_TOT_PLANILLA_GS ||',
'    ''  P375_TOT_PLANILLA_US: ''||:P375_TOT_PLANILLA_US ||',
'    ''  P375_A_IMPORTE_ANT: ''||:P375_A_IMPORTE_ANT||',
'    ''  P375_TOT_PLANILLA: ''||:P375_TOT_PLANILLA',
'    );*/',
'  ',
'END;'))
,p_attribute_02=>'P375_A_NRO_CUOTA,P375_COD_EMPRESA,P375_COD_USUARIO,P375_COD_CUSTODIO_SAL,P375_A_TIP_COMPROBANTE,P375_A_SER_COMPROBANTE,P375_A_NRO_COMPROBANTE,P375_A_OTROS,P375_A_NRO_VALOR,P375_COD_MONEDA_BASE,P375_A_COD_MONEDA,P375_TIP_CAMBIO,P375_A_COD_MONEDA_ANT,P'
||'375_TOT_PLANILLA_GS,P375_TOT_PLANILLA_US,P375_A_IMPORTE_ANT,P375_TOT_PLANILLA'
,p_attribute_03=>'P375_A_COD_MONEDA_ANT,P375_A_IMPORTE_TOTAL,P375_TOT_PLANILLA_GS,P375_TOT_PLANILLA_US,P375_TOT_PLANILLA,P375_A_IMPORTE_ANT,P375_A_TIP_ORIGEN,P375_A_NOM_CLIENTE,P375_A_COD_CLIENTE,P375_A_IMPORTE,P375_A_COD_MONEDA,P375_A_COD_PER_JURIDICA,P375_A_NRO_CUOT'
||'A,P375_COD_CUSTODIO,P375_A_NRO_VALOR,P375_TIP_CAMBIO,P375_A_COD_SECTOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116201045535991442)
,p_name=>'DA_CONFIRMAR'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116200802005991440)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116199925687991431)
,p_event_id=>wwv_flow_imp.id(116201045535991442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar los cambios?')
,p_attribute_02=>'CONFIRMAR'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116200011077991432)
,p_event_id=>wwv_flow_imp.id(116201045535991442)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116201295272991444)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P375_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116201315711991445)
,p_event_id=>wwv_flow_imp.id(116201295272991444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116201467032991446)
,p_event_id=>wwv_flow_imp.id(116201295272991444)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    CCCUSDOC.pr_borrar_miembro_collection( PI_SEQ_ID_ELIMINAR => :P375_SEQ_ID_ELIMINAR);     ',
'end;'))
,p_attribute_02=>'P375_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116201841858991450)
,p_event_id=>wwv_flow_imp.id(116201295272991444)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN',
'    SELECT sum( decode( C011, :P375_COD_MONEDA, C009, round( C009 * nvl( C012, 1 ) / nvl( :P375_TIP_CAMBIO, 1 ), 0 ) ) ) ',
'    INTO :P375_TOT_PLANILLA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'and nvl(C030,''P'')<>''B'';',
'END;',
''))
,p_attribute_02=>'P375_COD_MONEDA,P375_TIP_CAMBIO,P375_COD_MONEDA_BASE,P375_COD_MONEDA_DOL'
,p_attribute_03=>'P375_TOT_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117382442682966102)
,p_event_id=>wwv_flow_imp.id(116201295272991444)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select sum( C009 )',
'    into :P375_TOT_PLANILLA_GS',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    and C011   = :P375_COD_MONEDA_BASE',
'    and nvl(C030,''P'')<>''B'';',
'END;',
'BEGIN',
'    select sum( C009 )',
'    into :P375_TOT_PLANILLA_US',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    and C011   = :P375_COD_MONEDA_DOL',
'    and nvl(C030,''P'')<>''B'';',
'END;'))
,p_attribute_02=>'P375_COD_MONEDA_BASE,P375_COD_MONEDA_DOL'
,p_attribute_03=>'P375_TOT_PLANILLA_GS,P375_TOT_PLANILLA_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117382334647966101)
,p_event_id=>wwv_flow_imp.id(116201295272991444)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' select count(seq_id)',
' Into :P375_DET_CANTIDAD_TOTAL',
' FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
' and nvl(C030,''P'')<>''B'';',
'EXCEPTION',
'  WHEN NO_DATA_FOUND  THEN',
'  :P375_DET_CANTIDAD_TOTAL := 0;',
'END;'))
,p_attribute_03=>'P375_DET_CANTIDAD_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116201587716991447)
,p_event_id=>wwv_flow_imp.id(116201295272991444)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096142584781133)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117382590245966103)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P375_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117382602185966104)
,p_event_id=>wwv_flow_imp.id(117382590245966103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        C004  TIP_COMPROBANTE,',
'        C005  SER_COMPROBANTE,',
'        C006  NRO_COMPROBANTE,',
'        C007  NRO_CUOTA,         ',
'        C009  IMPORTE ,',
'        C010  COD_PER_JURIDICA,',
'        C011  COD_MONEDA,',
'        C012  TIP_CAMBIO,',
'        C013  COD_CLIENTE,',
'        C014  TIP_ORIGEN,',
'        C015  NRO_VALOR,       ',
'        C024  COMENTARIO,',
'        C025  COD_SECTOR,',
'        C026  NRO_ORDEN,',
'        C027  IND_RECEPCION_DET ',
'         ',
'    INTO',
'        :P375_A_TIP_COMPROBANTE,',
'        :P375_A_SER_COMPROBANTE,',
'        :P375_A_NRO_COMPROBANTE,',
'        :P375_A_NRO_CUOTA,',
'        :P375_A_IMPORTE,',
'        :P375_A_COD_PER_JURIDICA,',
'        :P375_A_COD_MONEDA,',
'        :P375_A_TIP_CAMBIO,',
'        :P375_A_COD_CLIENTE,',
'        :P375_A_TIP_ORIGEN,',
'        :P375_A_NRO_VALOR,',
'        :P375_A_COMENTARIO,',
'        :P375_A_COD_SECTOR,',
'        :P375_A_NRO_ORDEN,',
'        :P375_A_IND_RECEPCION_DET',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND  SEQ_ID = :P375_SEQ_ID_EDITAR;',
'END;'))
,p_attribute_02=>'P375_SEQ_ID_EDITAR'
,p_attribute_03=>'P375_A_TIP_COMPROBANTE,P375_A_SER_COMPROBANTE,P375_A_NRO_COMPROBANTE,P375_A_NRO_CUOTA,P375_A_IMPORTE,P375_A_COD_PER_JURIDICA,P375_A_COD_MONEDA,P375_A_TIP_CAMBIO,P375_A_COD_CLIENTE,P375_A_TIP_ORIGEN,P375_A_NRO_VALOR,P375_A_COMENTARIO,P375_A_COD_SECTOR'
||',P375_A_NRO_ORDEN,P375_A_IND_RECEPCION_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117382875876966106)
,p_event_id=>wwv_flow_imp.id(117382590245966103)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096085898781132)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117384467394966122)
,p_event_id=>wwv_flow_imp.id(117382590245966103)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(116197343096991405)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117384588661966123)
,p_event_id=>wwv_flow_imp.id(117382590245966103)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(116197273985991404)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117383129718966109)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116197273985991404)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117383262385966110)
,p_event_id=>wwv_flow_imp.id(117383129718966109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P375_AUX_MSJ_CONTROL := null;',
'if(:P375_A_NRO_COMPROBANTE is null or :P375_A_TIP_COMPROBANTE is null or :P375_A_SER_COMPROBANTE is null',
'    or :P375_A_NRO_CUOTA is null)then',
'    :P375_AUX_MSJ_CONTROL :=''Ingrese todos los campos obligatorios'';',
'else',
'    BEGIN',
'        CCCUSDOC.pr_agregar_miembro_detalle(PI_COD_EMPRESA => :P375_COD_EMPRESA,',
'                  PI_SER_PLANILLA => :P375_SER_PLANILLA,',
'                  PI_NRO_PLANILLA => :P375_NRO_PLANILLA,',
'                  PI_TIP_COMPROBANTE => :P375_A_TIP_COMPROBANTE,',
'                  PI_SER_COMPROBANTE => :P375_A_SER_COMPROBANTE,',
'                  PI_NRO_COMPROBANTE => :P375_A_NRO_COMPROBANTE,',
'                  PI_NRO_CUOTA => :P375_A_NRO_CUOTA,',
'                  PI_FEC_CARGA => SYSDATE,',
'                  PI_IMPORTE => :P375_A_IMPORTE, ',
'                  PI_COD_PER_JURIDICA => :P375_A_COD_PER_JURIDICA,',
'                  PI_COD_MONEDA => :P375_A_COD_MONEDA,',
'                  PI_TIP_CAMBIO => :P375_A_TIP_CAMBIO,',
'                  PI_COD_CLIENTE => :P375_A_COD_CLIENTE,',
'                  PI_TIP_ORIGEN => :P375_A_TIP_ORIGEN,',
'                  PI_NRO_VALOR => :P375_A_NRO_VALOR,',
'                  PI_ANULADO => NULL,',
'                  PI_TIP_REFERENCIA => NULL,',
'                  PI_SER_REFERENCIIA => NULL,',
'                  PI_NRO_REFERENCIA => NULL,',
'                  PI_SER_REFERENCIA => NULL,',
'                  PI_COD_CUSTODIO => :P375_COD_CUSTODIO,',
'                  PI_COMENTARIO => :P375_A_COMENTARIO,',
'                  PI_COD_SECTOR => :P375_A_COD_SECTOR,',
'                  PI_NRO_ORDEN => :P375_A_NRO_ORDEN,',
'                  PI_IND_RECEPCION_DET => :P375_A_IND_RECEPCION_DET);',
'    END;',
'end if;'))
,p_attribute_02=>'P375_AUX_MSJ_CONTROL,P375_COD_EMPRESA, P375_SER_PLANILLA, P375_NRO_PLANILLA, P375_A_TIP_COMPROBANTE, P375_A_SER_COMPROBANTE, P375_A_NRO_COMPROBANTE, P375_A_NRO_CUOTA, P375_A_IMPORTE, P375_A_COD_PER_JURIDICA, P375_A_COD_MONEDA, P375_A_TIP_CAMBIO, P375'
||'_A_COD_CLIENTE, P375_A_TIP_ORIGEN, PI_NRO_VALOR, P375_A_NRO_VALOR, P375_COD_CUSTODIO, P375_A_COMENTARIO, P375_A_COD_SECTOR, P375_A_NRO_ORDEN, P375_A_IND_RECEPCION_DET'
,p_attribute_03=>'P375_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117383541851966113)
,p_event_id=>wwv_flow_imp.id(117383129718966109)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P375_AUX_MSJ_CONTROL.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P375_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117383351415966111)
,p_event_id=>wwv_flow_imp.id(117383129718966109)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096142584781133)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P375_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117385738532966135)
,p_event_id=>wwv_flow_imp.id(117383129718966109)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN',
'    SELECT sum( decode( C011, :P375_COD_MONEDA, C009, round( C009 * nvl( C012, 1 ) / nvl( :P375_TIP_CAMBIO, 1 ), 0 ) ) ) ',
'    INTO :P375_TOT_PLANILLA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'and nvl(C030,''P'')<>''B'';',
'END;',
''))
,p_attribute_02=>'P375_COD_MONEDA,P375_TIP_CAMBIO,P375_COD_MONEDA_BASE,P375_COD_MONEDA_DOL'
,p_attribute_03=>'P375_TOT_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117385856564966136)
,p_event_id=>wwv_flow_imp.id(117383129718966109)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select sum( C009 )',
'    into :P375_TOT_PLANILLA_GS',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    and C011   = :P375_COD_MONEDA_BASE',
'    and nvl(C030,''P'')<>''B'';',
'END;',
'BEGIN',
'    select sum( C009 )',
'    into :P375_TOT_PLANILLA_US',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    and C011   = :P375_COD_MONEDA_DOL',
'    and nvl(C030,''P'')<>''B'';',
'END;'))
,p_attribute_02=>'P375_COD_MONEDA_BASE,P375_COD_MONEDA_DOL'
,p_attribute_03=>'P375_TOT_PLANILLA_GS,P375_TOT_PLANILLA_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
 p_id=>wwv_flow_imp.id(117385985384966137)
,p_event_id=>wwv_flow_imp.id(117383129718966109)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' select count(seq_id)',
' Into :P375_DET_CANTIDAD_TOTAL',
' FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
' and nvl(C030,''P'')<>''B'';',
'EXCEPTION',
'  WHEN NO_DATA_FOUND  THEN',
'  :P375_DET_CANTIDAD_TOTAL := 0;',
'END;'))
,p_attribute_03=>'P375_DET_CANTIDAD_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117383629376966114)
,p_event_id=>wwv_flow_imp.id(117383129718966109)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096085898781132)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P375_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117383867058966116)
,p_name=>'DA_EDITAR'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116197343096991405)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117384079039966118)
,p_event_id=>wwv_flow_imp.id(117383867058966116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P375_AUX_MSJ_CONTROL := null;',
'if(:P375_A_NRO_COMPROBANTE is null or :P375_A_TIP_COMPROBANTE is null or :P375_A_SER_COMPROBANTE is null',
'    or :P375_A_NRO_CUOTA is null)then',
'    :P375_AUX_MSJ_CONTROL :=''Ingrese todos los campos obligatorios'';',
'else',
'    BEGIN',
'        CCCUSDOC.pr_editar_miembro_detalle( PI_SEQ_ID_EDITAR => :P375_SEQ_ID_EDITAR,',
'                  PI_COD_EMPRESA => :P375_COD_EMPRESA,',
'                  PI_TIP_COMPROBANTE => :P375_A_TIP_COMPROBANTE,',
'                  PI_SER_COMPROBANTE => :P375_A_SER_COMPROBANTE,',
'                  PI_NRO_COMPROBANTE => :P375_A_NRO_COMPROBANTE,',
'                  PI_NRO_CUOTA => :P375_A_NRO_CUOTA,                   ',
'                  PI_IMPORTE => :P375_A_IMPORTE, ',
'                  PI_COD_PER_JURIDICA => :P375_A_COD_PER_JURIDICA,',
'                  PI_COD_MONEDA => :P375_A_COD_MONEDA,',
'                  PI_TIP_CAMBIO => :P375_A_TIP_CAMBIO,',
'                  PI_COD_CLIENTE => :P375_A_COD_CLIENTE,',
'                  PI_TIP_ORIGEN => :P375_A_TIP_ORIGEN,',
'                  PI_NRO_VALOR => :P375_A_NRO_VALOR,                  ',
'                  PI_COD_CUSTODIO => :P375_COD_CUSTODIO,',
'                  PI_COMENTARIO => :P375_A_COMENTARIO,',
'                  PI_COD_SECTOR => :P375_A_COD_SECTOR,',
'                  PI_NRO_ORDEN => :P375_A_NRO_ORDEN,',
'                  PI_IND_RECEPCION_DET => :P375_A_IND_RECEPCION_DET);',
'    END;',
'end if;'))
,p_attribute_02=>'P375_AUX_MSJ_CONTROL,P375_COD_EMPRESA, P375_SER_PLANILLA, P375_NRO_PLANILLA, P375_A_TIP_COMPROBANTE, P375_A_SER_COMPROBANTE, P375_A_NRO_COMPROBANTE, P375_A_NRO_CUOTA, P375_A_IMPORTE, P375_A_COD_PER_JURIDICA, P375_A_COD_MONEDA, P375_A_TIP_CAMBIO, P375'
||'_A_COD_CLIENTE, P375_A_TIP_ORIGEN, PI_NRO_VALOR, P375_A_NRO_VALOR, P375_COD_CUSTODIO, P375_A_COMENTARIO, P375_A_COD_SECTOR, P375_A_NRO_ORDEN, P375_A_IND_RECEPCION_DET,P375_SEQ_ID_EDITAR'
,p_attribute_03=>'P375_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117384125840966119)
,p_event_id=>wwv_flow_imp.id(117383867058966116)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P375_AUX_MSJ_CONTROL.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P375_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117384256863966120)
,p_event_id=>wwv_flow_imp.id(117383867058966116)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096142584781133)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P375_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117385450745966132)
,p_event_id=>wwv_flow_imp.id(117383867058966116)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN',
'    SELECT sum( decode( C011, :P375_COD_MONEDA, C009, round( C009 * nvl( C012, 1 ) / nvl( :P375_TIP_CAMBIO, 1 ), 0 ) ) ) ',
'    INTO :P375_TOT_PLANILLA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'and nvl(C030,''P'')<>''B'';',
'END;',
''))
,p_attribute_02=>'P375_COD_MONEDA,P375_TIP_CAMBIO,P375_COD_MONEDA_BASE,P375_COD_MONEDA_DOL'
,p_attribute_03=>'P375_TOT_PLANILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117385530199966133)
,p_event_id=>wwv_flow_imp.id(117383867058966116)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select sum( C009 )',
'    into :P375_TOT_PLANILLA_GS',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    and C011   = :P375_COD_MONEDA_BASE',
'    and nvl(C030,''P'')<>''B'';',
'END;',
'BEGIN',
'    select sum( C009 )',
'    into :P375_TOT_PLANILLA_US',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    and C011   = :P375_COD_MONEDA_DOL',
'    and nvl(C030,''P'')<>''B'';',
'END;'))
,p_attribute_02=>'P375_COD_MONEDA_BASE,P375_COD_MONEDA_DOL'
,p_attribute_03=>'P375_TOT_PLANILLA_GS,P375_TOT_PLANILLA_US'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117385611592966134)
,p_event_id=>wwv_flow_imp.id(117383867058966116)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' select count(seq_id)',
' Into :P375_DET_CANTIDAD_TOTAL',
' FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DETALLE''',
' and nvl(C030,''P'')<>''B'';',
'EXCEPTION',
'  WHEN NO_DATA_FOUND  THEN',
'  :P375_DET_CANTIDAD_TOTAL := 0;',
'END;'))
,p_attribute_03=>'P375_DET_CANTIDAD_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117384330226966121)
,p_event_id=>wwv_flow_imp.id(117383867058966116)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(112096085898781132)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P375_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(117384696462966124)
,p_name=>'DA_VER_DETALLE'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P375_SEQ_ID_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(117384768349966125)
,p_event_id=>wwv_flow_imp.id(117384696462966124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c in(SELECT ',
'        C001 COD_EMPRESA,',
'        C011 COD_MONEDA,',
'        C024 COMENTARIO,',
'        C025 COD_SECTOR',
'        FROM APEX_COLLECTIONS',
'        WHERE COLLECTION_NAME = ''COL_DETALLE''',
'        AND seq_id = :P375_SEQ_ID_DETALLE)loop',
'    :P375_DET_COMENTARIO := c.COMENTARIO;',
'    BEGIN',
'        select descripcion',
'        into :P375_DET_DESC_MONEDA',
'        from monedas',
'        where cod_moneda = c.COD_MONEDA;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P375_DET_DESC_MONEDA := NULL;',
'    END;',
'    BEGIN',
'        select descripcion',
'        into :P375_DET_DESC_SECTOR',
'        from sectores',
'        where cod_empresa = C.cod_empresa',
'        and cod_sector = c.COD_SECTOR ;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P375_DET_DESC_SECTOR := NULL;',
'    END;',
'   end loop;',
'end;',
'',
'',
' '))
,p_attribute_02=>'P375_SEQ_ID_DETALLE'
,p_attribute_03=>'P375_DET_COMENTARIO,P375_DET_DESC_MONEDA,P375_DET_DESC_SECTOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(121293129332956220)
,p_name=>'JS_IMPRIMIR'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116200921098991441)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(121293226352956221)
,p_event_id=>wwv_flow_imp.id(121293129332956220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P375_COD_EMPRESA'').getValue(), apex.item(''P375_SER_PLANILLA'').getValue(), apex.item(''P375_NRO_PLANILLA'').getValue(), ',
'           apex.item(''P375_FEC_PLANILLA'').getValue(),apex.item(''P375_COD_USUARIO_ALTA'').getValue(), apex.item(''P375_COD_USUARIO_REC'').getValue(), ',
'           apex.item(''P375_COD_CUSTODIO_ENT'').getValue(), apex.item(''P375_COD_CUSTODIO_SAL'').getValue(), apex.item(''P375_IND_RECEPCION'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125944529427116520)
,p_name=>'DA_ES_NUMERO'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P375_NRO_PLANILLA,P375_A_NRO_ORDEN,P375_A_NRO_VALOR,P375_A_IMPORTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125944642245116521)
,p_event_id=>wwv_flow_imp.id(125944529427116520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(116200187369991433)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_CAMBIOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    CCCUSDOC.pr_confirmar_accion(PI_ACCION_CAB => :P375_ACCION_CAB,',
'                  PI_ROW_ID => :P375_ROW_ID_CAB,',
'                  PI_COD_EMPRESA => :P375_COD_EMPRESA, ',
'                  PI_SER_PLANILLA => :P375_SER_PLANILLA, ',
'                  PI_NRO_PLANILLA => :P375_NRO_PLANILLA,',
'                  PI_FEC_PLANILLA => :P375_FEC_PLANILLA,',
'                  PI_COD_CUSTODIO_ENT => :P375_COD_CUSTODIO_ENT,',
'                  PI_COD_CUSTODIO_SAL => :P375_COD_CUSTODIO_SAL,',
'                  PI_OBSERVACION => NULL,',
'                  PI_COD_USUARIO => :P375_COD_USUARIO,',
'                  PI_FEC_CARGA => NULL,',
'                  PI_COD_MONEDA => :P375_COD_MONEDA,',
'                  PI_TOT_PLANILLA => :P375_TOT_PLANILLA,',
'                  PI_TIP_CAMBIO => :P375_TIP_CAMBIO,',
'                  PI_IND_RECEPCION => :P375_IND_RECEPCION,',
'                  PI_FEC_RECEPCION => :P375_FEC_RECEPCION,',
'                  PI_COD_USUARIO_REC => :P375_COD_USUARIO_REC,',
'                  PI_IND_GENERADO_POR => NULL,',
'                  PI_HORA_RECEPCION => :P375_HORA_RECEPCION );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Datos guardados corectamente'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112224093450227433)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P375_P_NRO_PLANILLA'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(112095767795781129)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ---pre form ',
'  --inicializa globales',
'  :P375_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
'  :P375_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'  :P375_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
'  :P375_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'  :P375_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
'  :P_COD_MODULO := NVL(:P_COD_MODULO,''CC'');',
'',
'  --inicializa locales',
'  :P375_COD_FORMA   := ''CCCUSDOC'';',
'',
'  :P375_COD_MONEDA_BASE := bs_busca_parametro( ''BS'', ''COD_MONEDA_BASE'' ) ;',
'  :P375_COD_MONEDA_DOL  := bs_busca_parametro( ''CM'', ''COD_MONEDA_DOL''  ) ;',
'  :P375_TIPO_CHEQUE     := bs_busca_parametro( :P375_COD_MODULO, ''TIPO_CHEQUE'' ) ;',
'  :P375_TIPO_TRANSLADO   := bs_busca_parametro( :P375_COD_MODULO, ''TIPO_OTROS_TRASLADOS'' ) ;',
'  :P375_EFECTIVO        := ''EF'' ;',
'  :P375_SER_PLANILLA    := ''A'' ;',
'  :P375_FILTRO := ''N'' ;',
'  :P375_RGB             := ''N'' ;',
'',
'  --DATOS TEST',
' :P375_COD_USUARIO := ''FACT4'';',
'  --:P375_P_NRO_PLANILLA := 334624;',
'  -------------------------------------------------',
'',
'   :P375_TIPO_CARGA:=''M'';',
'IF :P375_P_NRO_PLANILLA IS NULL THEN',
'       begin',
'         select cod_custodio',
'            into :P375_COD_CUSTODIO',
'            from usuarios',
'            where cod_empresa = :P375_COD_EMPRESA',
'              and cod_usuario = :P375_COD_USUARIO ;',
'      exception',
'         when others then',
'            :P375_COD_CUSTODIO := null ;',
'      end ;',
'     CCCUSDOC.pr_carga_custodios_alt (PI_cod_empresa => :P375_COD_EMPRESA,',
'    				PI_cod_usuario => :P375_COD_USUARIO,',
'    				PO_cod_custodios_alt => :P375_COD_CUSTODIO_ALT );',
'     ',
'    -- WHEN-CREATE-RECORD',
'    :P375_FEC_PLANILLA := sysdate ;',
'    :P375_COD_CUSTODIO_SAL := :P375_COD_CUSTODIO ;',
'    :P375_COD_MONEDA := :P375_COD_MONEDA_BASE;',
'    :P375_FECHA_ALTA := sysdate ;',
'    :P375_COD_USUARIO_ALTA := :P375_COD_USUARIO ;',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DETALLE'');',
'    :P375_ACCION_CAB := ''A'';',
'    ',
'    DECLARE',
'    vnumero NUMBER(8);',
'    i       NUMBER;',
'  BEGIN',
'    Select max( nro_planilla )  ',
'      into vnumero',
'      from cc_plan_custodios_cab',
'     where cod_empresa = :P375_COD_EMPRESA',
'       and ser_planilla = :P375_SER_PLANILLA ;',
'',
'     vnumero := nvl( vnumero,0) + 1;',
'     :P375_NRO_PLANILLA := vnumero ; ',
'',
'  EXCEPTION',
'    when no_data_found then  ',
'      vnumero := 1;',
'      :P375_NRO_PLANILLA := vnumero ; ',
'    when others then',
'     raise_application_error(-20201,''Error en tabla de planillas de ingreso.'');',
'  END;',
' ',
'',
'ELSE',
'    :P375_ACCION_CAB := ''E'';',
'    :P375_NRO_PLANILLA := :P375_P_NRO_PLANILLA;',
'    CCCUSDOC.pr_cargar_datos(PI_COD_EMPRESA => :P375_COD_EMPRESA,',
'                     PI_NRO_PLANILLA => :P375_NRO_PLANILLA);',
'    CCCUSDOC.pr_cargar_detalle(PI_COD_EMPRESA => :P375_COD_EMPRESA,',
'                     PI_NRO_PLANILLA => :P375_NRO_PLANILLA);',
'     SELECT       ',
'        C002 SER_PLANILLA,        ',
'        C004 FEC_PLANILLA,',
'        C005 COD_CUSTODIO_ENT,',
'        C006 COD_CUSTODIO_SAL,   ',
'        C008 COD_USUARIO,        ',
'        C009 FEC_CARGA,',
'        C010 COD_MONEDA,',
'        C011 TOT_PLANILLA,',
'        C012 TIP_CAMBIO,',
'        C013 IND_RECEPCION,',
'        C014 FEC_RECEPCION,',
'        C015 COD_USUARIO_REC,        ',
'        C017 HORA_RECEPCION,',
'        C018 ROW_ID',
'     INTO',
'        :P375_SER_PLANILLA,',
'        :P375_FEC_PLANILLA,',
'        :P375_COD_CUSTODIO_ENT,',
'        :P375_COD_CUSTODIO_SAL,',
'        :P375_COD_USUARIO_ALTA,',
'        :P375_FECHA_ALTA,',
'        :P375_COD_MONEDA,',
'        :P375_TOT_PLANILLA,',
'        :P375_TIP_CAMBIO,',
'        :P375_IND_RECEPCION,',
'        :P375_FEC_RECEPCION,',
'        :P375_COD_USUARIO_REC,',
'        :P375_HORA_RECEPCION,',
'        :P375_ROW_ID_CAB',
'     FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''COL_CABECERA'';',
'    begin',
'         select cod_custodio',
'            into :P375_COD_CUSTODIO',
'            from usuarios',
'            where cod_empresa = :P375_COD_EMPRESA',
'              and cod_usuario = :P375_COD_USUARIO_alta ;',
'      exception',
'         when others then',
'            :P375_COD_CUSTODIO := null ;',
'      end ;',
'     CCCUSDOC.pr_carga_custodios_alt (PI_cod_empresa => :P375_COD_EMPRESA,',
'    				PI_cod_usuario => :P375_COD_USUARIO_alta,',
'    				PO_cod_custodios_alt => :P375_COD_CUSTODIO_ALT );',
'END IF;',
'',
'CCCUSDOC.pr_cargar_cabecera(PI_cod_moneda => :P375_COD_MONEDA,',
'                            PI_COD_MONEDA_BASE => :P375_COD_MONEDA_BASE,',
'							PI_tip_cambio => :P375_TIP_CAMBIO,',
'							PI_COD_EMPRESA => :P375_COD_EMPRESA,',
'							PI_ser_planilla => :P375_SER_PLANILLA,',
'							PI_nro_planilla => :P375_NRO_PLANILLA,',
'							PI_tot_planilla => :P375_TOT_PLANILLA,',
'							PI_tot_planilla_us => :P375_TOT_PLANILLA_US,',
'							PI_tot_planilla_gs => :P375_TOT_PLANILLA_GS,',
'							pi_cod_moneda_dol => :P375_COD_MONEDA_DOL,',
'							PO_tot_planilla => :P375_TOT_PLANILLA,			    ',
'							PO_tot_planilla_gs => :P375_TOT_PLANILLA_GS,',
'							PO_tot_planilla_us =>: P375_TOT_PLANILLA_uS) ;',
':P375_FILTRO := :P375_IND_RECEPCION;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
