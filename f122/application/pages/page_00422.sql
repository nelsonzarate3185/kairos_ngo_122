prompt --application/pages/page_00422
begin
--   Manifest
--     PAGE: 00422
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
 p_id=>422
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Remision de Facturas - STRREMFA'
,p_alias=>'STRREMFA'
,p_step_title=>'Remision de Facturas - STRREMFA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240129121745'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124774205019288711)
,p_plug_name=>'MAIN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124775004987288719)
,p_plug_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(124774205019288711)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>80
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124775155021288720)
,p_plug_name=>'BOTON'
,p_parent_plug_id=>wwv_flow_imp.id(124774205019288711)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>90
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124775553991288724)
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
 p_id=>wwv_flow_imp.id(124776746582288736)
,p_plug_name=>'REPORTES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124776855499288737)
,p_plug_name=>'STDEFACREM'
,p_parent_plug_id=>wwv_flow_imp.id(124776746582288736)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CL.COD_CLIENTE, ',
'       PR.NOMBRE CLENTE,',
'       SS.COD_ARTICULO,',
'       SS.DESCRIPCION,',
'       SUM(SS.CANT_REM) CREMIT,',
'       SUM(SS.CANT_FACT)CFACT',
'FROM CC_CLIENTES CL,',
'     PERSONAS PR,',
'     (  select CR.COD_CLIENTE , DR.COD_ARTICULO, AR.DESCRIPCION, DR.CANTIDAD CANT_REM, 0  CANT_FACT',
'            from ST_REMISION_CAB CR,',
'                 st_remision_det DR,',
'                 ST_ARTICULOS AR',
'           where CR.cod_empresa = :P_COD_EMPRESA',
'             and cR.fec_comprobante between TO_DATE(:P422_FEC_INICIAL,''DD/MM/YYYY'') and TO_DATE(:P422_FEC_FINAL,''DD/MM/YYYY'')',
'             and ( :P422_COD_CLIENTE IS NULL OR cR.cod_cliente = :P422_COD_CLIENTE)',
'             and CR.cod_empresa = DR.cod_empresa',
'             and CR.tip_comprobante = DR.tip_comprobante',
'             and CR.ser_comprobante = DR.ser_comprobante',
'             and CR.nro_comprobante = DR.nro_comprobante',
'             and CR.tip_comprobante_ref = ''FAC''',
'             and nvl(CR.anulado, ''N'') <> ''S''             ',
'             AND DR.COD_ARTICULO=AR.COD_ARTICULO',
'             AND DR.COD_EMPRESA=AR.COD_EMPRESA',
'        UNION ALL',
'',
'            SELECT FC.COD_CLIENTE,',
'                   FD.COD_ARTICULO,',
'                   AR.DESCRIPCION,',
'                   0 CANT_REM,',
'                   FD.CANTIDAD CANT_FACT',
'            FROM   VT_COMPROBANTES_CABECERA FC,',
'                   VT_COMPROBANTES_DETALLE FD,',
'                   ST_ARTICULOS AR',
'            WHERE  FC.COD_EMPRESA= :P_COD_EMPRESA',
'            AND    Fc.fec_comprobante between TO_DATE(:P422_FEC_INICIAL,''DD/MM/YYYY'') and TO_DATE(:P422_FEC_FINAL,''DD/MM/YYYY'')',
'            AND    (:P422_COD_CLIENTE IS NULL OR Fc.cod_cliente = :P422_COD_CLIENTE)',
'            AND    (FC.SER_COMPROBANTE= :P422_SER_FAC OR :P422_SER_FAC IS NULL) ',
'            AND    (FC.NRO_COMPROBANTE= :P422_NRO_FAC OR :P422_NRO_FAC IS NULL) ',
'            AND    FC.TIP_COMPROBANTE IN (''FCO'',''FCR'',''TKT'')',
'            AND    FC.COD_EMPRESA = FD.COD_EMPRESA',
'            AND    FC.TIP_COMPROBANTE = FD.TIP_COMPROBANTE',
'            AND    FC.SER_COMPROBANTE = FD.SER_COMPROBANTE',
'            AND    FC.NRO_COMPROBANTE = FD.NRO_COMPROBANTE',
'            AND    FD.COD_EMPRESA = AR.COD_EMPRESA',
'            AND    FD.COD_ARTICULO = AR.COD_ARTICULO ',
'        ) SS ',
'WHERE CL.COD_PERSONA = PR.COD_PERSONA',
'and SS.cod_cliente = cl.cod_cliente',
'and cl.cod_empresa = :P_COD_EMPRESA',
'AND :P422_INDICADOR_STDEFACREM = ''1''',
'GROUP BY CL.COD_CLIENTE,',
'         PR.NOMBRE,',
'         SS.COD_ARTICULO,',
'         SS.DESCRIPCION'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P422_COD_CLIENTE,P422_FEC_INICIAL,P422_FEC_FINAL,P422_NRO_FAC,P422_SER_FAC,P422_INDICADOR_STDEFACREM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STDEFACREM'
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
 p_id=>wwv_flow_imp.id(124777493363288743)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>124777493363288743
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124777585997288744)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124777663068288745)
,p_db_column_name=>'CLENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Clente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124777741872288746)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124777844550288747)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124777960139288748)
,p_db_column_name=>'CREMIT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cremit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124778029267288749)
,p_db_column_name=>'CFACT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cfact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126334675703411334)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1263347'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:CLENTE:COD_ARTICULO:DESCRIPCION:CREMIT:CFACT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124776955865288738)
,p_plug_name=>'STRDEREMFAC'
,p_parent_plug_id=>wwv_flow_imp.id(124776746582288736)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT FC.SER_COMPROBANTE,',
'        FC.NRO_COMPROBANTE,',
'        FC.FEC_COMPROBANTE,',
'        FC.COD_CLIENTE,',
'        PR.NOMBRE,',
'        FD.COD_ARTICULO,',
'        AR.DESCRIPCION,',
'        FD.CANTIDAD  CANT_FACT,',
'        NVL((',
'            select SUM(dR.cantidad)    ',
'             from ST_REMISION_CAB CR,',
'                 st_remision_det DR',
'            where CR.cod_empresa = FC.COD_EMPRESA',
'              and CR.cod_empresa = DR.cod_empresa',
'              and CR.tip_comprobante = DR.tip_comprobante',
'              and CR.ser_comprobante = DR.ser_comprobante',
'              and CR.nro_comprobante = DR.nro_comprobante',
'              and CR.tip_comprobante_ref = ''FAC''',
'              and nvl(CR.anulado, ''N'') <> ''S''',
'              AND CR.SER_COMPROBANTE_REF=FC.SER_COMPROBANTE',
'              AND CR.NRO_COMPROBANTE_REF=FC.NRO_COMPROBANTE',
'              AND DR.COD_ARTICULO=FD.COD_ARTICULO',
'            ),0)CANT_REM,',
'       fc.COD_SUCURSAL, ',
'       fc.fec_comprobante fecha_factura',
'FROM   VT_COMPROBANTES_CABECERA FC,',
'       VT_COMPROBANTES_DETALLE FD,',
'       ST_ARTICULOS AR,',
'       CC_CLIENTES CL,',
'       PERSONAS PR',
'WHERE  FC.COD_EMPRESA= :P_COD_EMPRESA',
'AND    FC.TIP_COMPROBANTE IN (''FCO'',''FCR'',''TKT'')',
'AND   ( FC.SER_COMPROBANTE= :P422_SER_FAC  OR  :P422_SER_FAC  IS NULL)',
'AND  (  FC.NRO_COMPROBANTE= :P422_NRO_FAC   OR :P422_NRO_FAC  IS NULL)',
'AND (   FC.cod_cliente = :P422_COD_CLIENTE OR :P422_COD_CLIENTE IS NULL)',
'and fc.fec_comprobante between nvl(TO_DATE(:P422_FEC_INICIAL,''DD/MM/YYYY''),sysdate-365) ',
'and nvl(TO_DATE(:P422_FEC_FINAL,''DD/MM/YYYY''),sysdate+1)',
'   AND (FC.COD_VENDEDOR = :P422_COD_VENDEDOR OR :P422_COD_VENDEDOR IS NULL)',
'AND    FC.COD_EMPRESA=FD.COD_EMPRESA',
'AND    FC.TIP_COMPROBANTE=FD.TIP_COMPROBANTE',
'AND    FC.SER_COMPROBANTE=FD.SER_COMPROBANTE',
'AND    FC.NRO_COMPROBANTE=FD.NRO_COMPROBANTE',
'AND    FD.COD_EMPRESA= AR.COD_EMPRESA',
'AND    FD.COD_ARTICULO=AR.COD_ARTICULO',
'AND    FC.COD_EMPRESA= CL.COD_EMPRESA',
'AND    FC.COD_CLIENTE=CL.COD_CLIENTE',
'AND    CL.COD_PERSONA=PR.COD_PERSONA',
'AND    :P422_INDICADOR_STRDEREMFAC = ''1''',
'',
'and         (fD.CANTIDAD-nvl(  (select sum(nd.cantidad)',
'		from vt_comprobantes_cabecera nc,',
'		     vt_comprobantes_detalle nd',
'		where nc.cod_empresa=fc.cod_empresa',
'		and   nc.tip_comprobante=''NCR''',
'		and   nc.nro_comprobante_ref= fc.nro_comprobante ',
'		and   nc.ser_comprobante_ref=fc.ser_comprobante ',
'		and   nc.tip_comprobante_ref=fc.tip_comprobante ',
'		and   nc.tip_comprobante=nd.tip_comprobante',
'		and   nc.ser_comprobante=nd.ser_comprobante',
'		and   nc.nro_comprobante=nd.nro_comprobante',
'		and   nc.cod_empresa=nd.cod_empresa',
'		and   nd.cod_articulo= fd.cod_articulo',
'		),0) )>0  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P422_COD_VENDEDOR,P422_INDICADOR_STRDEREMFAC,P422_COD_CLIENTE,P422_FEC_INICIAL,P422_FEC_FINAL,P422_NRO_FAC,P422_SER_FAC,P422_INDICADOR_STDEFACREM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STRDEREMFAC'
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
 p_id=>wwv_flow_imp.id(126323220414478602)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>126323220414478602
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126323368932478603)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126323457322478604)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126323506450478605)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126323633161478606)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126323704968478607)
,p_db_column_name=>'NOMBRE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126323889076478608)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126323921692478609)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126324031047478610)
,p_db_column_name=>'CANT_FACT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cant Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126324131324478611)
,p_db_column_name=>'CANT_REM'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cant Rem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126324245244478612)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126324365493478613)
,p_db_column_name=>'FECHA_FACTURA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Factura'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126335278084411318)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1263353'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE:NOMBRE:COD_ARTICULO:DESCRIPCION:CANT_FACT:CANT_REM:COD_SUCURSAL:FECHA_FACTURA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124777041271288739)
,p_plug_name=>'STREPCLICNTL'
,p_parent_plug_id=>wwv_flow_imp.id(124776746582288736)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.nro_comprobante,',
'       C.FECHA_ALTA,',
'       c.fec_comprobante FECHA_FACT,',
'       c.tip_comprobante_REF,',
'       c.ser_comprobante_REF, ',
'       c.nro_comprobante_REF,',
'       d.cod_articulo,',
'       s.descripcion desc_articulo,',
'       d.cantidad cant_FACT,',
'       D.CANT_REMITIDA,',
'       D.CANT_DISPONIBLE,',
'       c.cod_cliente,       ',
'       p.nombre,',
'',
'       nvl((select sum( rd.cantidad)',
'       	    from st_remision_cab rc,',
'       	         st_remision_det rd',
'           where rc.cod_empresa= c.cod_empresa',
'           AND   RC.COD_CLIENTE= c.COD_CLIENTE',
'           and   rc.nro_comprobante_ref= c.nro_comprobante_ref',
'           and   rc.ser_comprobante_ref= c.ser_comprobante_ref',
'           and   rc.cod_empresa=rd.cod_empresa',
'           and   rc.tip_comprobante= rd.tip_comprobante',
'           and   rc.ser_comprobante= rd.ser_comprobante',
'           and   rc.nro_comprobante= rd.nro_comprobante',
'           and   rd.cod_articulo=d.cod_articulo',
'           and   rc.tip_comprobante_ref=''FAC''',
'           and   nvl(rc.anulado,''N'')=''N''',
'        	),0) cant_rem,',
'        nvl(  (select sum(nd.cantidad)',
'    		from vt_comprobantes_cabecera nc,',
'    		     vt_comprobantes_detalle nd',
'    		where nc.cod_empresa=c.cod_empresa',
'    		and   nc.tip_comprobante=''NCR''',
'        and nvl(columna,''x'')<>''1''',
'		and   nc.nro_comprobante_ref= c.nro_comprobante_ref',
'		and   nc.ser_comprobante_ref=c.ser_comprobante_ref',
'		and   nc.tip_comprobante_ref=c.tip_comprobante_ref',
'		and   nc.tip_comprobante=nd.tip_comprobante',
'		and   nc.ser_comprobante=nd.ser_comprobante',
'		and   nc.nro_comprobante=nd.nro_comprobante',
'		and   nc.cod_empresa=nd.cod_empresa',
'		and   nd.cod_articulo= d.cod_articulo',
'        and nvl(estado,''P'')<>''A''',
'		),0) CANT_NCR,',
'',
'        nvl(  (select nvl(nd.cod_sucursal,nc.cod_sucursal)',
'            from vt_comprobantes_cabecera nc,',
'                 vt_comprobantes_detalle nd',
'            where nc.cod_empresa=c.cod_empresa',
'            and   nc.nro_comprobante= c.nro_comprobante_ref',
'            and   nc.ser_comprobante=c.ser_comprobante_ref',
'            and   nc.tip_comprobante=c.tip_comprobante_ref',
'            and   nc.tip_comprobante=nd.tip_comprobante',
'            and   nc.ser_comprobante=nd.ser_comprobante',
'            and   nc.nro_comprobante=nd.nro_comprobante',
'            and   nc.cod_empresa=nd.cod_empresa',
'            and   nd.cod_articulo= d.cod_articulo',
'        and nvl(estado,''P'')<>''A''',
'        and rownum=1',
'            ),c.cod_sucursal)cod_sucursal,',
'((s.largo_cm/100*s.ancho_cm/100*s.alto_cm/100)/',
'CASE WHEN NVL(s.CANT_X_PAQUETE,0 )> 0 THEN',
'1',
'ELSE 1',
'END',
'*1)volumen,',
'  (select nc.nro_comprobante_ref',
'		from vt_comprobantes_cabecera nc ',
'		where nc.cod_empresa=c.cod_empresa',
'		and   nc.nro_comprobante= c.nro_comprobante_ref',
'		and   nc.ser_comprobante=c.ser_comprobante_ref',
'		and   nc.tip_comprobante=c.tip_comprobante_ref',
'and nvl(nc.estado,''P'')<>''A'')pedido, s.cod_art_corto,',
'',
'( SELECT (A.FECHA_ENTREGA)',
'',
'        FROM VT_PEDIDOS_CABECERA A, VT_COMPROBANTES_CABECERA Cc',
'       where Cc.cod_empresa = c.cod_empresa',
'       AND cc.TIP_COMPROBANTE IN (''FCO'',''FCR'')',
'       AND cc.NRO_COMPROBANTE=c.nro_comprobante_REF',
'       AND cc.SER_COMPROBANTE=c.ser_comprobante_REF',
'       AND a.COD_EMPRESA=Cc.COD_EMPRESA',
'         and A.tip_comprobante = Cc.tip_comprobante_ref',
'         and A.ser_comprobante = Cc.ser_comprobante_ref',
'         and A.nro_comprobante = Cc.nro_comprobante_ref)fecha_entrega,',
'NVL((select DESCRIPCION',
'         from   fv_vendedores  fvv',
'         where fvv.cod_empresa=ccc.cod_empresa',
'         and fvv.cod_vendedor=ccc.cod_vendedor),''N/A'')VENDEDOR_factura,',
'/*NVL((select DESCRIPCION',
'         from   fv_vendedores  fvv',
'         where fvv.cod_empresa=ccc.cod_empresa',
'         and fvv.cod_vendedor=ccc.cod_vendedor),''N/A'')VENDEDOR_factura,*/',
'         (select max(rc.nro_planilla)',
'         from rp_reparto_detalle rc',
'         where rc.cod_empresa=c.cod_empresa',
'         and rc.tip_comprobante=ccc.tip_comprobante',
'         and rc.ser_comprobante=ccc.ser_comprobante',
'         and rc.nro_comprobante=ccc.nro_comprobante)pla_reparto, ccc.cod_vendedor',
'',
'  from ST_STOCK_CLIENTE_CAB c,',
'       cc_clientes     cl,',
'       personas        p,',
'       ST_STOCK_CLIENTE_DET d,',
'       st_articulos    s, VT_COMPROBANTES_CABECERA CCC',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and trunc(c.FECHA_ALTA )between TO_DATE(:P422_FEC_INICIAL, ''DD/MM/YYYY'') and TO_DATE(:P422_FEC_INICIAL, ''DD/MM/YYYY'')+5',
'   and (:P422_COD_CLIENTE IS NULL OR c.cod_cliente = :P422_COD_CLIENTE)',
'   AND (C.COD_CLIENTE = :P422_COD_CLIENTE OR :P422_COD_CLIENTE IS NULL)',
'   AND (c.nro_comprobante_ref = :P422_NRO_FAC OR :P422_NRO_FAC IS NULL)',
'   AND (c.SER_comprobante_ref = :P422_SER_FAC OR :P422_SER_FAC IS NULL)',
'   AND C.COD_CLIENTE=CL.COD_CLIENTE',
'   AND C.COD_EMPRESA=CL.COD_EMPRESA',
'   AND CL.COD_PERSONA=P.COD_PERSONA',
'   AND C.COD_EMPRESA=D.COD_EMPRESA',
'   AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'   AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'   AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'',
'   AND (CCC.COD_VENDEDOR = :P422_COD_VENDEDOR OR :P422_COD_VENDEDOR IS NULL)',
'   AND C.COD_EMPRESA=CCC.COD_EMPRESA',
'   AND C.NRO_COMPROBANTE_REF=CCC.NRO_COMPROBANTE',
'   AND C.SER_COMPROBANTE_REF=CCC.SER_COMPROBANTE',
'   AND C.TIP_COMPROBANTE_REF=CCC.TIP_COMPROBANTE',
'',
'   AND D.COD_EMPRESA=S.COD_EMPRESA',
'   AND D.COD_ARTICULO=S.COD_ARTICULO',
' ',
'   AND (D.CANTIDAD-nvl((select sum( rd.cantidad)',
'	    from st_remision_cab rc,',
'	         st_remision_det rd',
'	    where rc.cod_empresa= c.cod_empresa',
'	    AND   RC.COD_CLIENTE= c.COD_CLIENTE',
'	    and   rc.nro_comprobante_ref= c.nro_comprobante_ref',
'	    and   rc.ser_comprobante_ref= c.ser_comprobante_ref',
'	    and   rc.cod_empresa=rd.cod_empresa',
'	    and   rc.tip_comprobante= rd.tip_comprobante',
'	    and   rc.ser_comprobante= rd.ser_comprobante',
'	    and   rc.nro_comprobante= rd.nro_comprobante',
'	    and   rd.cod_articulo=d.cod_articulo',
'	    and   rc.tip_comprobante_ref=''FAC''',
'	    and   nvl(rc.anulado,''N'')=''N''',
'	  ),0)-',
'    ',
'    nvl(  (select sum(nd.cantidad)',
'		from vt_comprobantes_cabecera nc,',
'		     vt_comprobantes_detalle nd',
'		where nc.cod_empresa=c.cod_empresa',
'		and   nc.tip_comprobante=''NCR''',
' and nvl(columna,''x'')<>''1''',
'		and   nc.nro_comprobante_ref= c.nro_comprobante_ref',
'		and   nc.ser_comprobante_ref=c.ser_comprobante_ref',
'		and   nc.tip_comprobante_ref=c.tip_comprobante_ref',
'		and   nc.tip_comprobante=nd.tip_comprobante',
'		and   nc.ser_comprobante=nd.ser_comprobante',
'		and   nc.nro_comprobante=nd.nro_comprobante',
'		and   nc.cod_empresa=nd.cod_empresa',
'		and   nd.cod_articulo= d.cod_articulo',
'and nvl(estado,''P'')<>''A''',
'		),0)',
'     )>0   ',
'',
' and         (D.CANTIDAD-nvl(  (select sum(nd.cantidad)',
'		from vt_comprobantes_cabecera nc,',
'		     vt_comprobantes_detalle nd',
'		where nc.cod_empresa=c.cod_empresa',
'		and   nc.tip_comprobante=''NCR''',
' and nvl(columna,''x'')<>''1''',
'		and   nc.nro_comprobante_ref= c.nro_comprobante_ref',
'		and   nc.ser_comprobante_ref=c.ser_comprobante_ref',
'		and   nc.tip_comprobante_ref=c.tip_comprobante_ref',
'		and   nc.tip_comprobante=nd.tip_comprobante',
'		and   nc.ser_comprobante=nd.ser_comprobante',
'		and   nc.nro_comprobante=nd.nro_comprobante',
'		and   nc.cod_empresa=nd.cod_empresa',
'		and   nd.cod_articulo= d.cod_articulo',
'and nvl(estado,''P'')<>''A''',
'		),0) )>0  ',
'AND :P422_INDICADOR_STREPCLICNTL = ''1''',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P422_COD_VENDEDOR,P422_INDICADOR_STRDEREMFAC,P422_COD_CLIENTE,P422_FEC_INICIAL,P422_FEC_FINAL,P422_NRO_FAC,P422_SER_FAC,P422_INDICADOR_STREPCLICNTL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STREPCLICNTL'
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
 p_id=>wwv_flow_imp.id(126324506563478615)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>126324506563478615
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126324774859478617)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126324890223478618)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126324918440478619)
,p_db_column_name=>'FECHA_FACT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Fact'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126325058660478620)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126325187881478621)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126325219235478622)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126325398887478623)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126325476587478624)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126325507565478625)
,p_db_column_name=>'CANT_FACT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cant Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126325615924478626)
,p_db_column_name=>'CANT_REMITIDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cant Remitida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126325705070478627)
,p_db_column_name=>'CANT_DISPONIBLE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cant Disponible'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126325870160478628)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126325908656478629)
,p_db_column_name=>'NOMBRE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126326034316478630)
,p_db_column_name=>'CANT_REM'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cant Rem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126326178627478631)
,p_db_column_name=>'CANT_NCR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cant Ncr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126326200105478632)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126326314410478633)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126326432513478634)
,p_db_column_name=>'PEDIDO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126326562790478635)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126326689597478636)
,p_db_column_name=>'FECHA_ENTREGA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fecha Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126326777799478637)
,p_db_column_name=>'VENDEDOR_FACTURA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Vendedor Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126326875709478638)
,p_db_column_name=>'PLA_REPARTO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Pla Reparto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126326988773478639)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126351052389276761)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1263511'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_COMPROBANTE:FECHA_ALTA:FECHA_FACT:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_ARTICULO:DESC_ARTICULO:CANT_FACT:CANT_REMITIDA:CANT_DISPONIBLE:COD_CLIENTE:NOMBRE:CANT_REM:CANT_NCR:COD_SUCURSAL:VOLUMEN:PEDIDO:COD_ART_CORTO:FECHA_'
||'ENTREGA:VENDEDOR_FACTURA:PLA_REPARTO:COD_VENDEDOR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124777138492288740)
,p_plug_name=>'STREPCLICNTLM'
,p_parent_plug_id=>wwv_flow_imp.id(124776746582288736)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'NRO_COMPROBANTE,  FECHA_ALTA,  FECHA_FACT,  TIP_COMPROBANTE_REF,  SER_COMPROBANTE_REF,',
'  NRO_COMPROBANTE_REF , COD_ARTICULO , DESC_ARTICULO,  CANT_FACT , CANT_REMITIDA,',
'    CANT_DISPONIBLE,  COD_CLIENTE,  NOMBRE,  CANT_REM , CANT_NCR , COD_SUCURSAL, ',
'      VOLUMEN,  PEDIDO,  COD_ART_CORTO , fecha_entreg,MONTO_UNITARIO,LISTA_PRECIOS,',
'',
'',
'nvl((cant_fact - Cant_rem-cant_ncr),0)',
'*MONTO_UNITARIO MONTO_TOTAL, vendedor_factura from (select c.nro_comprobante,',
'       C.FECHA_ALTA,',
'       c.fec_comprobante FECHA_FACT,',
'       c.tip_comprobante_REF,',
'       c.ser_comprobante_REF, ',
'       c.nro_comprobante_REF,',
'       d.cod_articulo,',
'       s.descripcion desc_articulo,',
'       d.cantidad cant_FACT,',
'       D.CANT_REMITIDA,',
'       D.CANT_DISPONIBLE,',
'       c.cod_cliente,       ',
'       p.nombre,',
'',
'nvl((select sum( rd.cantidad)',
'      from st_remision_cab rc,',
'           st_remision_det rd',
'      where rc.cod_empresa= c.cod_empresa',
'      AND   RC.COD_CLIENTE= c.COD_CLIENTE',
'      and   rc.nro_comprobante_ref= c.nro_comprobante_ref',
'      and   rc.ser_comprobante_ref= c.ser_comprobante_ref',
'      and   rc.cod_empresa=rd.cod_empresa',
'      and   rc.tip_comprobante= rd.tip_comprobante',
'      and   rc.ser_comprobante= rd.ser_comprobante',
'      and   rc.nro_comprobante= rd.nro_comprobante',
'      and   rd.cod_articulo=d.cod_articulo',
'      and   rc.tip_comprobante_ref=''FAC''',
'      and   nvl(rc.anulado,''N'')=''N''',
'    ),0) cant_rem,',
'    nvl(  (select sum(nd.cantidad)',
'    from vt_comprobantes_cabecera nc,',
'         vt_comprobantes_detalle nd',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.tip_comprobante=''NCR''',
' and nvl(columna,''x'')<>''1''',
'    and   nc.nro_comprobante_ref= c.nro_comprobante_ref',
'    and   nc.ser_comprobante_ref=c.ser_comprobante_ref',
'    and   nc.tip_comprobante_ref=c.tip_comprobante_ref',
'    and   nc.tip_comprobante=nd.tip_comprobante',
'    and   nc.ser_comprobante=nd.ser_comprobante',
'    and   nc.nro_comprobante=nd.nro_comprobante',
'    and   nc.cod_empresa=nd.cod_empresa',
'    and   nd.cod_articulo= d.cod_articulo',
'and nvl(estado,''P'')<>''A''',
'    ),0) CANT_NCR',
',',
'',
' ',
'  nvl(  (select nvl(nd.cod_sucursal,nc.cod_sucursal)',
'    from vt_comprobantes_cabecera nc,',
'         vt_comprobantes_detalle nd',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.nro_comprobante= c.nro_comprobante_ref',
'    and   nc.ser_comprobante=c.ser_comprobante_ref',
'    and   nc.tip_comprobante=c.tip_comprobante_ref',
'    and   nc.tip_comprobante=nd.tip_comprobante',
'    and   nc.ser_comprobante=nd.ser_comprobante',
'    and   nc.nro_comprobante=nd.nro_comprobante',
'    and   nc.cod_empresa=nd.cod_empresa',
'    and   nd.cod_articulo= d.cod_articulo',
'and nvl(estado,''P'')<>''A''',
'   AND ROWNUM=1 ),c.cod_sucursal)',
'cod_sucursal,',
'((s.largo_cm/100*s.ancho_cm/100*s.alto_cm/100)/',
'CASE WHEN NVL(s.CANT_X_PAQUETE,0 )> 0 THEN',
'/*s.CANT_X_PAQUETE*/1',
'ELSE 1',
'END',
'*1)volumen,',
'  (select nc.nro_comprobante_ref',
'    from vt_comprobantes_cabecera nc ',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.nro_comprobante= c.nro_comprobante_ref',
'    and   nc.ser_comprobante=c.ser_comprobante_ref',
'    and   nc.tip_comprobante=c.tip_comprobante_ref',
'and nvl(nc.estado,''P'')<>''A''',
'AND ROWNUM=1)pedido, s.cod_art_corto,',
'',
'((select round(sum((nc.monto_total+nc.total_iva)/nc.cantidad))',
'    from vt_comprobantes_detalle nc ',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.nro_comprobante= c.nro_comprobante_ref',
'    and   nc.ser_comprobante=c.ser_comprobante_ref',
'    and   nc.tip_comprobante=c.tip_comprobante_ref',
'    and nc.cod_articulo=d.cod_articulo',
'))monto_unitario,',
'( SELECT MAX(A.FECHA_ENTREGA)',
'',
'        FROM VT_PEDIDOS_CABECERA A, VT_COMPROBANTES_CABECERA Cc',
'       where Cc.cod_empresa = c.cod_empresa',
'       AND cc.TIP_COMPROBANTE IN (''FCO'',''FCR'')',
'       AND cc.NRO_COMPROBANTE=c.nro_comprobante_REF',
'       AND cc.SER_COMPROBANTE=c.ser_comprobante_REF',
'       AND a.COD_EMPRESA=Cc.COD_EMPRESA',
'         and A.tip_comprobante = Cc.tip_comprobante_ref',
'         and A.ser_comprobante = Cc.ser_comprobante_ref',
'         and A.nro_comprobante = Cc.nro_comprobante_ref',
')fecha_entreg,',
'NVL((select DESCRIPCION',
'         from   fv_vendedores  fvv',
'         where fvv.cod_empresa=ccc.cod_empresa',
'         and fvv.cod_vendedor=ccc.cod_vendedor),''N/A'') VENDEDOR_factura,',
'         (select LP.DESCRIPCION',
'    from vt_comprobantes_cabecera nc , VT_LISTAS_PRECIOS_CAB LP',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.nro_comprobante= c.nro_comprobante_ref',
'    and   nc.ser_comprobante=c.ser_comprobante_ref',
'    and   nc.tip_comprobante=c.tip_comprobante_ref',
'AND NC.COD_EMPRESA=LP.COD_EMPRESA',
'AND NC.COD_LISTA_PRECIO=LP.COD_LISTA_PRECIO',
'and nvl(nc.estado,''P'')<>''A''',
'AND ROWNUM=1)LISTA_PRECIOS',
'',
'  from ST_STOCK_CLIENTE_CAB c,',
'       cc_clientes     cl,',
'       personas        p,',
'       ST_STOCK_CLIENTE_DET d,',
'       st_articulos    s, VT_COMPROBANTES_CABECERA CCC',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and trunc(c.FECHA_ALTA )between TO_DATE(:P422_FEC_INICIAL,''DD/MM/YYYY'') and TO_DATE(:P422_FEC_FINAL,''DD/MM/YYYY'')+5',
'   and (:P422_COD_CLIENTE IS NULL OR c.cod_cliente = :P422_COD_CLIENTE)',
'   AND (C.COD_CLIENTE = :P422_COD_CLIENTE OR :P422_COD_CLIENTE IS NULL)',
'   AND :P422_INDICADOR_STREPCLICNTLM = ''1''',
'',
'   AND (CCC.COD_VENDEDOR = :P422_COD_VENDEDOR OR :P422_COD_VENDEDOR IS NULL)',
'   AND C.COD_EMPRESA=CCC.COD_EMPRESA',
'   AND C.NRO_COMPROBANTE_REF=CCC.NRO_COMPROBANTE',
'   AND C.SER_COMPROBANTE_REF=CCC.SER_COMPROBANTE',
'   AND C.TIP_COMPROBANTE_REF=CCC.TIP_COMPROBANTE',
'',
'',
'   AND (c.nro_comprobante_ref = :P422_NRO_FAC OR :P422_NRO_FAC IS NULL)',
'   AND (c.SER_comprobante_ref = :P422_SER_FAC OR :P422_SER_FAC IS NULL)',
'   AND C.COD_CLIENTE=CL.COD_CLIENTE',
'   AND C.COD_EMPRESA=CL.COD_EMPRESA',
'   AND CL.COD_PERSONA=P.COD_PERSONA',
'   AND C.COD_EMPRESA=D.COD_EMPRESA',
'   AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'   AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'   AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'   AND D.COD_EMPRESA=S.COD_EMPRESA',
'   AND D.COD_ARTICULO=S.COD_ARTICULO',
' ',
'   AND (D.CANTIDAD-nvl((select sum( rd.cantidad)',
'      from st_remision_cab rc,',
'           st_remision_det rd',
'      where rc.cod_empresa= c.cod_empresa',
'      AND   RC.COD_CLIENTE= c.COD_CLIENTE',
'      and   rc.nro_comprobante_ref= c.nro_comprobante_ref',
'      and   rc.ser_comprobante_ref= c.ser_comprobante_ref',
'      and   rc.cod_empresa=rd.cod_empresa',
'      and   rc.tip_comprobante= rd.tip_comprobante',
'      and   rc.ser_comprobante= rd.ser_comprobante',
'      and   rc.nro_comprobante= rd.nro_comprobante',
'      and   rd.cod_articulo=d.cod_articulo',
'      and   rc.tip_comprobante_ref=''FAC''',
'      and   nvl(rc.anulado,''N'')=''N''',
'    ),0)-',
'    ',
'    nvl(  (select sum(nd.cantidad)',
'    from vt_comprobantes_cabecera nc,',
'         vt_comprobantes_detalle nd',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.tip_comprobante=''NCR''',
' and nvl(columna,''x'')<>''1''',
'    and   nc.nro_comprobante_ref= c.nro_comprobante_ref',
'    and   nc.ser_comprobante_ref=c.ser_comprobante_ref',
'    and   nc.tip_comprobante_ref=c.tip_comprobante_ref',
'    and   nc.tip_comprobante=nd.tip_comprobante',
'    and   nc.ser_comprobante=nd.ser_comprobante',
'    and   nc.nro_comprobante=nd.nro_comprobante',
'    and   nc.cod_empresa=nd.cod_empresa',
'    and   nd.cod_articulo= d.cod_articulo',
'and nvl(estado,''P'')<>''A''',
'    ),0)',
'     )>0   ',
'',
' and         (D.CANTIDAD-nvl(  (select sum(nd.cantidad)',
'    from vt_comprobantes_cabecera nc,',
'         vt_comprobantes_detalle nd',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.tip_comprobante=''NCR''',
' and nvl(columna,''x'')<>''1''',
'    and   nc.nro_comprobante_ref= c.nro_comprobante_ref',
'    and   nc.ser_comprobante_ref=c.ser_comprobante_ref',
'    and   nc.tip_comprobante_ref=c.tip_comprobante_ref',
'    and   nc.tip_comprobante=nd.tip_comprobante',
'    and   nc.ser_comprobante=nd.ser_comprobante',
'    and   nc.nro_comprobante=nd.nro_comprobante',
'    and   nc.cod_empresa=nd.cod_empresa',
'    and   nd.cod_articulo= d.cod_articulo',
'and nvl(estado,''P'')<>''A''',
'    ),0) )>0  )',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P422_INDICADOR_STREPCLICNTLM,P422_COD_VENDEDOR,P422_COD_CLIENTE,P422_FEC_INICIAL,P422_FEC_FINAL,P422_NRO_FAC,P422_SER_FAC'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STREPCLICNTLM'
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
 p_id=>wwv_flow_imp.id(126327057139478640)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>126327057139478640
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126327195487478641)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126327250360478642)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126327346801478643)
,p_db_column_name=>'FECHA_FACT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Fact'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126327467561478644)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126327519569478645)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126327694728478646)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126327731304478647)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126327831650478648)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126327957903478649)
,p_db_column_name=>'CANT_FACT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cant Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126328034268478650)
,p_db_column_name=>'CANT_REMITIDA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cant Remitida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126352094874266501)
,p_db_column_name=>'CANT_DISPONIBLE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cant Disponible'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126352157545266502)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126352219187266503)
,p_db_column_name=>'NOMBRE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126352329317266504)
,p_db_column_name=>'CANT_REM'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cant Rem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126352446776266505)
,p_db_column_name=>'CANT_NCR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cant Ncr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126352539523266506)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126352682009266507)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126352718979266508)
,p_db_column_name=>'PEDIDO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126352840762266509)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126352953057266510)
,p_db_column_name=>'FECHA_ENTREG'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Fecha Entreg'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126353093480266511)
,p_db_column_name=>'MONTO_UNITARIO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Monto Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126353188534266512)
,p_db_column_name=>'LISTA_PRECIOS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Lista Precios'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126353204304266513)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126353338213266514)
,p_db_column_name=>'VENDEDOR_FACTURA'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Vendedor Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126367271862224523)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1263673'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_COMPROBANTE:FECHA_ALTA:FECHA_FACT:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_ARTICULO:DESC_ARTICULO:CANT_FACT:CANT_REMITIDA:CANT_DISPONIBLE:COD_CLIENTE:NOMBRE:CANT_REM:CANT_NCR:COD_SUCURSAL:VOLUMEN:PEDIDO:COD_ART_CORTO:FECHA_'
||'ENTREG:MONTO_UNITARIO:LISTA_PRECIOS:MONTO_TOTAL:VENDEDOR_FACTURA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124777238315288741)
,p_plug_name=>'STREPREMDET'
,p_parent_plug_id=>wwv_flow_imp.id(124776746582288736)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_sucursal cod_suc_sal, s1.descripcion desc_suc_sal,',
'd.cod_articulo, s.descripcion desc_articulo,(d.cantidad)cantidad,',
'c.cod_cliente,',
'',
'p.nombre ,',
'',
'c.fec_comprobante, c.tip_comprobante, c.ser_comprobante, c.nro_comprobante,',
'nvl(c.nro_comprobante_ref, d.nro_ot)nro_ot',
',',
'       NVL((SELECT NVL(SUM(DF.CANTIDAD),0)',
'            FROM VT_COMPROBANTES_DETALLE DF',
'            WHERE DF.COD_EMPRESA= C.cod_empresa',
'            AND   DF.SER_COMPROBANTE=C.SER_COMPROBANTE_REF',
'            AND   DF.NRO_COMPROBANTE=C.NRO_COMPROBANTE_REF',
'            AND   DF.COD_ARTICULO=D.COD_ARTICULO',
'           ),0) CANT_FACT, c.ser_comprobante_ref serie_factura, nro_comprobante_ref numero_factura,',
'C.TIP_COMPROBANTE_REF, SA.COD_RUBRO,',
'NVL((select VP.IND_GUARDA',
'from vt_comprobantes_cabecera cc, vt_pedidos_cabecera vp',
'where cc.cod_empresa=c.cod_empresa',
'and cc.tip_comprobante in (''FCR'',''FCO'')',
'AND CC.SER_COMPROBANTE=C.SER_COMPROBANTE_REF',
'AND CC.NRO_COMPROBANTE=C.NRO_COMPROBANTE_REF',
'AND CC.COD_EMPRESA=VP.COD_EMPRESA',
'AND CC.TIP_COMPROBANTE_REF=VP.TIP_COMPROBANTE',
'AND CC.SER_COMPROBANTE_REF=VP.SER_COMPROBANTE',
'AND CC.NRO_COMPROBANTE_REF=VP.NRO_COMPROBANTE ),''N'')GUARDA,c.COD_DIRECCION,c.DIRECCION,',
'(select ci.descripcion ',
'from bs_sucursal_cliente su, ciudades ci where su.cod_empresa=c.cod_empresa',
' and su.cod_cliente=c.cod_cliente ',
' and su.cod_sucursal=c.cod_direccion',
' and su.cod_pais=ci.cod_pais',
' and su.cod_provincia=ci.cod_provincia',
' and su.cod_ciudad=ci.cod_ciudad',
' and rownum=1',
')ciudad,',
'(select  case when zona_entrega=''IN'' THEN',
' ''INTERIOR'' ELSE ''CAPITAL'' END',
'from bs_sucursal_cliente su, ciudades ci where su.cod_empresa=c.cod_empresa',
' and su.cod_cliente=c.cod_cliente ',
' and su.cod_sucursal=c.cod_direccion',
' and su.cod_pais=ci.cod_pais',
' and su.cod_provincia=ci.cod_provincia',
' and su.cod_ciudad=ci.cod_ciudad',
' and rownum=1',
')ZONA_ENTREGA,',
'',
'NVL((select round( (SUM(nc.monto_total+nc.total_iva)/SUM(nc.cantidad)))',
'    from vt_comprobantes_detalle nc ',
'    where nc.cod_empresa=c.cod_empresa',
'    and   nc.nro_comprobante= c.nro_comprobante_ref',
'    and   nc.ser_comprobante=c.ser_comprobante_ref',
'    and   nc.tip_comprobante in(''FCR'',''FCO'')',
'    AND C.TIP_COMPROBANTE_REF=''FAC''',
'    and nc.cod_articulo=d.cod_articulo',
'),SA.COSTO_PROM*1.1) *D.CANTIDAD IMPORTE_TOTAL',
'',
' from ST_REMISION_CAB c, sucursales s1 , st_articulos s ,st_remision_det d, cc_clientes cl,',
' personas p, ST_ARTICULOS SA',
'where c.cod_empresa = :P_COD_EMPRESA',
' and c.fec_comprobante between TO_DATE(:P422_FEC_INICIAL, ''DD/MM/YYYY'') and TO_DATE(:P422_FEC_FINAL, ''DD/MM/YYYY'')',
'  and ( :P422_COD_CLIENTE IS NULL OR c.cod_cliente = :P422_COD_CLIENTE )',
'  and s1.cod_empresa=c.cod_empresa',
'  and s1.cod_sucursal=c.cod_sucursal ',
'AND (C.COD_CLIENTE = :P422_COD_CLIENTE OR  :P422_COD_CLIENTE IS NULL)',
' AND (nvl(c.nro_comprobante_ref, d.nro_ot) = :P422_NRO_FAC OR :P422_NRO_FAC IS NULL)',
' AND (c.SER_comprobante_ref = :P422_SER_FAC OR :P422_SER_FAC IS NULL)',
'and nvl(anulado,''N'')<>''S''',
'and c.cod_empresa=d.cod_empresa',
'and c.tip_comprobante=d.tip_comprobante',
'and c.ser_comprobante=d.ser_comprobante',
'and c.nro_comprobante=d.nro_comprobante',
'and d.cod_empresa=s.cod_empresa',
'and d.cod_articulo=s.cod_articulo',
'and cl.cod_empresa=c.cod_empresa',
'and cl.cod_cliente=c.cod_cliente',
'and cl.cod_persona= p.cod_persona',
'AND SA.COD_EMPRESA=S.COD_EMPRESA',
'AND SA.COD_ARTICULO=S.COD_ARTICULO',
'AND :P422_INDICADOR_STREPREMDET = ''1''',
'',
'order by c.cod_sucursal',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P422_INDICADOR_STREPREMDET,P422_COD_VENDEDOR,P422_COD_CLIENTE,P422_FEC_INICIAL,P422_FEC_FINAL,P422_NRO_FAC,P422_SER_FAC'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STREPREMDET'
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
 p_id=>wwv_flow_imp.id(126353511293266516)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>126353511293266516
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126353651977266517)
,p_db_column_name=>'COD_SUC_SAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Suc Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126353703919266518)
,p_db_column_name=>'DESC_SUC_SAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Desc Suc Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126353869637266519)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126353988954266520)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126354060392266521)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126354191980266522)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126354240705266523)
,p_db_column_name=>'NOMBRE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126354363739266524)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126354437981266525)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126354579206266526)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126354670281266527)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126354788596266528)
,p_db_column_name=>'NRO_OT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro Referencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126354871332266529)
,p_db_column_name=>'CANT_FACT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cant Fact'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126354968042266530)
,p_db_column_name=>'SERIE_FACTURA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Serie Factura'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126355013927266531)
,p_db_column_name=>'NUMERO_FACTURA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Numero Factura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126355153857266532)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tip Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126355210511266533)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126355378452266534)
,p_db_column_name=>'GUARDA'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Guarda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509408095036358837)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509408113726358838)
,p_db_column_name=>'DIRECCION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(550357985285633201)
,p_db_column_name=>'CIUDAD'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(550358039623633202)
,p_db_column_name=>'ZONA_ENTREGA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Zona Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76098520715162811)
,p_db_column_name=>'IMPORTE_TOTAL'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Importe Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126407693958089484)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'1264077'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'COD_SUC_SAL:DESC_SUC_SAL:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:IMPORTE_TOTAL:COD_CLIENTE:NOMBRE:FEC_COMPROBANTE:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:DIRECCION:CIUDAD:ZONA_ENTREGA:SERIE_FACTURA:NUMERO_FACTURA:CANT_FACT:GUARDA:'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(550393628193952690)
,p_report_id=>wwv_flow_imp.id(126407693958089484)
,p_group_by_columns=>'FEC_COMPROBANTE:COD_CLIENTE:NOMBRE:SER_COMPROBANTE:NRO_COMPROBANTE:SERIE_FACTURA:NUMERO_FACTURA:ZONA_ENTREGA'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTIDAD'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cantidad'
,p_function_format_mask_01=>'999G999G999G999G999G999G990'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'IMPORTE_TOTAL'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Importe'
,p_function_format_mask_02=>'999G999G999G999G999G999G990'
,p_function_sum_02=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124777391199288742)
,p_plug_name=>'STREPREMFAC'
,p_parent_plug_id=>wwv_flow_imp.id(124776746582288736)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_sucursal cod_suc_sal, s1.descripcion desc_suc_sal,',
'd.cod_articulo, s.descripcion desc_articulo,(d.cantidad)cantidad,',
'c.cod_cliente, p.nombre, ',
'c.fec_comprobante, c.tip_comprobante, c.ser_comprobante, c.nro_comprobante,',
'nvl(c.nro_comprobante_ref, d.nro_ot)nro_ot',
' from ST_REMISION_CAB c, sucursales s1 , st_articulos s ,st_remision_det d, cc_clientes cl,',
' personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
' and c.fec_comprobante between TO_DATE(:P422_FEC_INICIAL, ''DD/MM/YYYY'') and TO_DATE(:P422_FEC_FINAL, ''DD/MM/YYYY'')',
'  and ( :P422_COD_CLIENTE IS NULL OR c.cod_cliente = :P422_COD_CLIENTE )',
'  and s1.cod_empresa=c.cod_empresa',
'  and s1.cod_sucursal=c.cod_sucursal ',
'AND (C.COD_CLIENTE = :P422_COD_CLIENTE OR  :P422_COD_CLIENTE IS NULL)',
' AND (nvl(c.nro_comprobante_ref, d.nro_ot) = :P422_NRO_FAC OR :P422_NRO_FAC IS NULL)',
' AND (c.SER_comprobante_ref = :P422_SER_FAC OR :P422_SER_FAC IS NULL)',
'and nvl(anulado,''N'')<>''S''',
'and c.cod_empresa=d.cod_empresa',
'and c.tip_comprobante=d.tip_comprobante',
'and c.ser_comprobante=d.ser_comprobante',
'and c.nro_comprobante=d.nro_comprobante',
'and d.cod_empresa=s.cod_empresa',
'and d.cod_articulo=s.cod_articulo',
'and cl.cod_empresa=c.cod_empresa',
'and cl.cod_cliente=c.cod_cliente',
'and cl.cod_persona= p.cod_persona',
'and c.tip_comprobante_ref=''FAC''',
'AND :P422_INDICADOR_STREPREMFAC = ''1''',
'',
'order by c.cod_sucursal',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P422_INDICADOR_STREPREMFAC,P422_COD_VENDEDOR,P422_COD_CLIENTE,P422_FEC_INICIAL,P422_FEC_FINAL,P422_NRO_FAC,P422_SER_FAC'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'STREPREMFAC'
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
 p_id=>wwv_flow_imp.id(126355506726266536)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>126355506726266536
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126355739937266538)
,p_db_column_name=>'COD_SUC_SAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Suc Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126355876301266539)
,p_db_column_name=>'DESC_SUC_SAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Desc Suc Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126355965759266540)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126356079049266541)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126356117564266542)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126356261650266543)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126356337398266544)
,p_db_column_name=>'NOMBRE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126356408017266545)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126356517611266546)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126356646247266547)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126356701479266548)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126356830258266549)
,p_db_column_name=>'NRO_OT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Nro Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126408209065089443)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1264083'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUC_SAL:DESC_SUC_SAL:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:COD_CLIENTE:NOMBRE:FEC_COMPROBANTE:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:NRO_OT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124778103098288750)
,p_plug_name=>'INDICADORES REPORTES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124775268379288721)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(124775155021288720)
,p_button_name=>'BTN_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126454978928731624)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(124775155021288720)
,p_button_name=>'BTN_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124774313423288712)
,p_name=>'P422_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124775004987288719)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.cod_vendedor || '' - '' || nvl(ltrim(p.nombre),ltrim(p.nomb_fantasia)) D, ',
'       v.cod_vendedor R',
'from fv_vendedores v, personas p ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'and nvl(v.estado, ''A'') = ''A'' ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124774429594288713)
,p_name=>'P422_SER_FAC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124775004987288719)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124774581256288714)
,p_name=>'P422_NRO_FAC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124775004987288719)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124774649017288715)
,p_name=>'P422_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124775004987288719)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cliente || '' - '' || nvl( p.nombre, p.nomb_fantasia )  R, ',
'       cod_cliente D',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124774709728288716)
,p_name=>'P422_FEC_INICIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124775004987288719)
,p_prompt=>'Fecha desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>4
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
 p_id=>wwv_flow_imp.id(124774861779288717)
,p_name=>'P422_FEC_FINAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124775004987288719)
,p_prompt=>'Fecha hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
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
 p_id=>wwv_flow_imp.id(124774906431288718)
,p_name=>'P422_REPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124775004987288719)
,p_prompt=>'Reporte'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Detalle de Remisiones;DET,Detalle por Factura;FAC,Resumen de Remisiones por Clientes;RRC,Detalle de Facturas con Remisiones;DFR,Stock de Clientes por Remisiones;SCR,Stock de Clientes por Remisiones(Montos);SCRM'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124775646613288725)
,p_name=>'P422_TIPO_REPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124775553991288724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124775745608288726)
,p_name=>'P422_MENSAJE_ALERT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124775553991288724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124776596451288734)
,p_name=>'P422_COD_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124775553991288724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126323131676478601)
,p_name=>'P422_INDICADOR_STDEFACREM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124778103098288750)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126324416188478614)
,p_name=>'P422_INDICADOR_STRDEREMFAC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124778103098288750)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126324683111478616)
,p_name=>'P422_INDICADOR_STREPCLICNTL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124778103098288750)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126353403248266515)
,p_name=>'P422_INDICADOR_STREPCLICNTLM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(124778103098288750)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126355476793266535)
,p_name=>'P422_INDICADOR_STREPREMDET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(124778103098288750)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126355677022266537)
,p_name=>'P422_INDICADOR_STREPREMFAC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(124778103098288750)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126356974013266550)
,p_name=>'DA_OCULTAR_REPORTES'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126415545032969901)
,p_event_id=>wwv_flow_imp.id(126356974013266550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776855499288737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126415680158969902)
,p_event_id=>wwv_flow_imp.id(126356974013266550)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776955865288738)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126415776420969903)
,p_event_id=>wwv_flow_imp.id(126356974013266550)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777041271288739)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126415806973969904)
,p_event_id=>wwv_flow_imp.id(126356974013266550)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777138492288740)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126415940233969905)
,p_event_id=>wwv_flow_imp.id(126356974013266550)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777238315288741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126416055427969906)
,p_event_id=>wwv_flow_imp.id(126356974013266550)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777391199288742)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126417018339969916)
,p_name=>'DA_EJECUTAR_STRDEREMFAC'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124775268379288721)
,p_condition_element=>'P422_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DFR'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126417897713969924)
,p_event_id=>wwv_flow_imp.id(126417018339969916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P422_INDICADOR_STDEFACREM := ''0'';',
'    :P422_INDICADOR_STRDEREMFAC := ''1'';',
'    :P422_INDICADOR_STREPCLICNTL := ''0'';',
'    :P422_INDICADOR_STREPCLICNTLM := ''0'';',
'    :P422_INDICADOR_STREPREMDET := ''0'';',
'    :P422_INDICADOR_STREPREMFAC := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P422_INDICADOR_STDEFACREM,P422_INDICADOR_STRDEREMFAC,P422_INDICADOR_STREPCLICNTL,P422_INDICADOR_STREPCLICNTLM,P422_INDICADOR_STREPREMDET,P422_INDICADOR_STREPREMFAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126417204010969918)
,p_event_id=>wwv_flow_imp.id(126417018339969916)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776855499288737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126417367982969919)
,p_event_id=>wwv_flow_imp.id(126417018339969916)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776955865288738)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126417492600969920)
,p_event_id=>wwv_flow_imp.id(126417018339969916)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777041271288739)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126417532055969921)
,p_event_id=>wwv_flow_imp.id(126417018339969916)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777138492288740)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126417669746969922)
,p_event_id=>wwv_flow_imp.id(126417018339969916)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777238315288741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126417779005969923)
,p_event_id=>wwv_flow_imp.id(126417018339969916)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777391199288742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126418177745969927)
,p_event_id=>wwv_flow_imp.id(126417018339969916)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776955865288738)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126418310608969929)
,p_name=>'DA_EJECUTAR_STDEFACREM'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124775268379288721)
,p_condition_element=>'P422_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'RRC'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126418416340969930)
,p_event_id=>wwv_flow_imp.id(126418310608969929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P422_INDICADOR_STDEFACREM := ''1'';',
'    :P422_INDICADOR_STRDEREMFAC := ''0'';',
'    :P422_INDICADOR_STREPCLICNTL := ''0'';',
'    :P422_INDICADOR_STREPCLICNTLM := ''0'';',
'    :P422_INDICADOR_STREPREMDET := ''0'';',
'    :P422_INDICADOR_STREPREMFAC := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P422_INDICADOR_STDEFACREM,P422_INDICADOR_STRDEREMFAC,P422_INDICADOR_STREPCLICNTL,P422_INDICADOR_STREPCLICNTLM,P422_INDICADOR_STREPREMDET,P422_INDICADOR_STREPREMFAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126418599437969931)
,p_event_id=>wwv_flow_imp.id(126418310608969929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776855499288737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126418643230969932)
,p_event_id=>wwv_flow_imp.id(126418310608969929)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776955865288738)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126418752455969933)
,p_event_id=>wwv_flow_imp.id(126418310608969929)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777041271288739)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126418829888969934)
,p_event_id=>wwv_flow_imp.id(126418310608969929)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777138492288740)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126418928356969935)
,p_event_id=>wwv_flow_imp.id(126418310608969929)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777238315288741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126419046959969936)
,p_event_id=>wwv_flow_imp.id(126418310608969929)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777391199288742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126419106677969937)
,p_event_id=>wwv_flow_imp.id(126418310608969929)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776855499288737)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126419281865969938)
,p_name=>'DA_EJECUTAR_STREPCLICNTL'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124775268379288721)
,p_condition_element=>'P422_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SCR'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126419302798969939)
,p_event_id=>wwv_flow_imp.id(126419281865969938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P422_INDICADOR_STDEFACREM := ''0'';',
'    :P422_INDICADOR_STRDEREMFAC := ''0'';',
'    :P422_INDICADOR_STREPCLICNTL := ''1'';',
'    :P422_INDICADOR_STREPCLICNTLM := ''0'';',
'    :P422_INDICADOR_STREPREMDET := ''0'';',
'    :P422_INDICADOR_STREPREMFAC := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P422_INDICADOR_STDEFACREM,P422_INDICADOR_STRDEREMFAC,P422_INDICADOR_STREPCLICNTL,P422_INDICADOR_STREPCLICNTLM,P422_INDICADOR_STREPREMDET,P422_INDICADOR_STREPREMFAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126419468482969940)
,p_event_id=>wwv_flow_imp.id(126419281865969938)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776855499288737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126419542164969941)
,p_event_id=>wwv_flow_imp.id(126419281865969938)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776955865288738)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126419627546969942)
,p_event_id=>wwv_flow_imp.id(126419281865969938)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777041271288739)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126419774977969943)
,p_event_id=>wwv_flow_imp.id(126419281865969938)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777138492288740)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126419886299969944)
,p_event_id=>wwv_flow_imp.id(126419281865969938)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777238315288741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126419915957969945)
,p_event_id=>wwv_flow_imp.id(126419281865969938)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777391199288742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126420055065969946)
,p_event_id=>wwv_flow_imp.id(126419281865969938)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777041271288739)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126420165876969947)
,p_name=>'DA_EJECUTAR_STREPCLICNTLM'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124775268379288721)
,p_condition_element=>'P422_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SCRM'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126420240151969948)
,p_event_id=>wwv_flow_imp.id(126420165876969947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P422_INDICADOR_STDEFACREM := ''0'';',
'    :P422_INDICADOR_STRDEREMFAC := ''0'';',
'    :P422_INDICADOR_STREPCLICNTL := ''0'';',
'    :P422_INDICADOR_STREPCLICNTLM := ''1'';',
'    :P422_INDICADOR_STREPREMDET := ''0'';',
'    :P422_INDICADOR_STREPREMFAC := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P422_INDICADOR_STDEFACREM,P422_INDICADOR_STRDEREMFAC,P422_INDICADOR_STREPCLICNTL,P422_INDICADOR_STREPCLICNTLM,P422_INDICADOR_STREPREMDET,P422_INDICADOR_STREPREMFAC'
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
 p_id=>wwv_flow_imp.id(126420359971969949)
,p_event_id=>wwv_flow_imp.id(126420165876969947)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776855499288737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126420466523969950)
,p_event_id=>wwv_flow_imp.id(126420165876969947)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776955865288738)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126452664038731601)
,p_event_id=>wwv_flow_imp.id(126420165876969947)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777041271288739)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126452700952731602)
,p_event_id=>wwv_flow_imp.id(126420165876969947)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777138492288740)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126452818361731603)
,p_event_id=>wwv_flow_imp.id(126420165876969947)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777238315288741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126452980052731604)
,p_event_id=>wwv_flow_imp.id(126420165876969947)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777391199288742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126453007151731605)
,p_event_id=>wwv_flow_imp.id(126420165876969947)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777138492288740)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126453128771731606)
,p_name=>'DA_EJECUTAR_STREPREMDET'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124775268379288721)
,p_condition_element=>'P422_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126453278884731607)
,p_event_id=>wwv_flow_imp.id(126453128771731606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P422_INDICADOR_STDEFACREM := ''0'';',
'    :P422_INDICADOR_STRDEREMFAC := ''0'';',
'    :P422_INDICADOR_STREPCLICNTL := ''0'';',
'    :P422_INDICADOR_STREPCLICNTLM := ''0'';',
'    :P422_INDICADOR_STREPREMDET := ''1'';',
'    :P422_INDICADOR_STREPREMFAC := ''0'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P422_INDICADOR_STDEFACREM,P422_INDICADOR_STRDEREMFAC,P422_INDICADOR_STREPCLICNTL,P422_INDICADOR_STREPCLICNTLM,P422_INDICADOR_STREPREMDET,P422_INDICADOR_STREPREMFAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126453356811731608)
,p_event_id=>wwv_flow_imp.id(126453128771731606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776855499288737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126453432872731609)
,p_event_id=>wwv_flow_imp.id(126453128771731606)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776955865288738)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126453577956731610)
,p_event_id=>wwv_flow_imp.id(126453128771731606)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777041271288739)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126453680728731611)
,p_event_id=>wwv_flow_imp.id(126453128771731606)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777138492288740)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126453758485731612)
,p_event_id=>wwv_flow_imp.id(126453128771731606)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777238315288741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126453802489731613)
,p_event_id=>wwv_flow_imp.id(126453128771731606)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777391199288742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126453911342731614)
,p_event_id=>wwv_flow_imp.id(126453128771731606)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777238315288741)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126454068656731615)
,p_name=>'DA_EJECUTAR_STREPREMFAC'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124775268379288721)
,p_condition_element=>'P422_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126454103257731616)
,p_event_id=>wwv_flow_imp.id(126454068656731615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P422_INDICADOR_STDEFACREM := ''0'';',
'    :P422_INDICADOR_STRDEREMFAC := ''0'';',
'    :P422_INDICADOR_STREPCLICNTL := ''0'';',
'    :P422_INDICADOR_STREPCLICNTLM := ''0'';',
'    :P422_INDICADOR_STREPREMDET := ''0'';',
'    :P422_INDICADOR_STREPREMFAC := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_03=>'P422_INDICADOR_STDEFACREM,P422_INDICADOR_STRDEREMFAC,P422_INDICADOR_STREPCLICNTL,P422_INDICADOR_STREPCLICNTLM,P422_INDICADOR_STREPREMDET,P422_INDICADOR_STREPREMFAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126454295631731617)
,p_event_id=>wwv_flow_imp.id(126454068656731615)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776855499288737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126454375098731618)
,p_event_id=>wwv_flow_imp.id(126454068656731615)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124776955865288738)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126454426869731619)
,p_event_id=>wwv_flow_imp.id(126454068656731615)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777041271288739)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126454524873731620)
,p_event_id=>wwv_flow_imp.id(126454068656731615)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777138492288740)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126454636555731621)
,p_event_id=>wwv_flow_imp.id(126454068656731615)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777238315288741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126454799714731622)
,p_event_id=>wwv_flow_imp.id(126454068656731615)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777391199288742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126454895225731623)
,p_event_id=>wwv_flow_imp.id(126454068656731615)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124777391199288742)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126417942253969925)
,p_name=>'DA_SETEAR_REPORTE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P422_REPORTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126418010320969926)
,p_event_id=>wwv_flow_imp.id(126417942253969925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P422_REPORTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126455032037731625)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126454978928731624)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126455111833731626)
,p_event_id=>wwv_flow_imp.id(126455032037731625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LIMPIAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126455331105731628)
,p_name=>'DA_REPORTE_VACIO'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124775268379288721)
,p_condition_element=>'P422_REPORTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126455413813731629)
,p_event_id=>wwv_flow_imp.id(126455331105731628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\00A1Debe seleccionar un tipo de reporte!')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(126418246694969928)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124776675075288735)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P422_COD_MODULO := ''ST'';',
'    :P422_FEC_INICIAL := SYSDATE;',
'    :P422_FEC_FINAL := SYSDATE;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(126455209513731627)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'LIMPIAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
