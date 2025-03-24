prompt --application/pages/page_00580
begin
--   Manifest
--     PAGE: 00580
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
 p_id=>580
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Calculo de Comisiones'
,p_alias=>'CALCULO-DE-COMISIONES'
,p_step_title=>'Calculo de Comisiones'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header  a , #checktext {color: darkblue; }',
'.a-IRR-header {    background-color: #fff8b7;',
'background-image: linear-gradient(180deg, #fff8b7 0%, #FFFB7D 100%);',
'',
'/*background: #fff8b7 !important;*/',
'}',
'',
'.t-Body-mainContent  { ',
'                        background: #082b642f!important;',
'                    } ',
'  ',
'  .t-Form-label{',
'                color:  #003A85  !important;  ',
'                font-weight: bold;   ',
'                } ',
'',
'',
'#P580_VTA_TOTAL, #P580_BASE_COMISION, #P580_PORC_FACT, #P580_MONTO_FACT, #P580_PORC_CUMP, #P580_MONTO_CUMP{',
'    font-size:  20px !important;  ',
'    font-weight: bold;',
'    background: #fffded !important;',
'    }',
'',
'#P580_TOT_COMISION{',
'    font-size:  20px !important;  ',
'    font-weight: bold;',
'    background: #fffded !important;',
'    color: darkred;',
'    }',
'    '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250226155011'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(187805003220448446)
,p_plug_name=>'Valores a Calcular'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188556385889494401)
,p_plug_name=>'Calculos'
,p_region_name=>'calculos'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188558592768494423)
,p_plug_name=>'FACTURACION '
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 CODIGO',
'       ,C002 NOMBRE_DESCRIPCION ',
'       ,N001 BASE_COMISION',
'       ,N002 PORC_PESO  ',
'       ,N003 OBJETIVO',
'       ,N004 VTA_TOTAL',
'       ,N005 PORC_LOGRADO',
'       ,to_number(C003) IMP_COMISION ',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_CALC_COM_FACT'' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'FACTURACION '
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
 p_id=>wwv_flow_imp.id(188560711469494445)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>188560711469494445
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188560898209494446)
,p_db_column_name=>'CODIGO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188560946595494447)
,p_db_column_name=>'NOMBRE_DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188561027159494448)
,p_db_column_name=>'BASE_COMISION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Base Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188561127619494449)
,p_db_column_name=>'PORC_PESO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'% Peso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(188561250634494450)
,p_db_column_name=>'OBJETIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190081220044831001)
,p_db_column_name=>'VTA_TOTAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total  de Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190081542868831004)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082698143831015)
,p_db_column_name=>'PORC_LOGRADO'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'% Logrado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190697499150286644)
,p_db_column_name=>'IMP_COMISION'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>unistr('Importe Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(190093312063814149)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1900934'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_DESCRIPCION:BASE_COMISION:PORC_PESO:OBJETIVO:VTA_TOTAL:PORC_LOGRADO:IMP_COMISION:'
,p_sum_columns_on_break=>'IMP_COMISION:BASE_COMISION:PORC_PESO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188558645256494424)
,p_plug_name=>'CUMPLIMIENTO DE POLITICAS'
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 CODIGO',
'       ,C002 NOMBRE_DESCRIPCION ',
'       ,N001 BASE_COMISION',
'       ,N002 PORC_PESO  ',
'       ,N003 OBJETIVO',
'       ,N004 VAL_ALCANZADO',
'       ,N005 PORC_LOGRADO',
'       ,to_NUMBER(C003) IMP_COMISION ',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_CALC_COM_CUMP'' ',
'and nvl(C001,''0'')<>''5''',
'AND nvl(C005,''0'')<>''2''',
'ORDER BY C001 ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CUMPLIMIENTO DE POLITICAS'
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
 p_id=>wwv_flow_imp.id(190081681114831005)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>190081681114831005
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190081729186831006)
,p_db_column_name=>'CODIGO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190081800753831007)
,p_db_column_name=>'NOMBRE_DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n Pol\00EDtica')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190081912558831008)
,p_db_column_name=>'BASE_COMISION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Base Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082082416831009)
,p_db_column_name=>'PORC_PESO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'% Peso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082115641831010)
,p_db_column_name=>'OBJETIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082242234831011)
,p_db_column_name=>'VAL_ALCANZADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Real Alcanzado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082316541831012)
,p_db_column_name=>'PORC_LOGRADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'% Logrado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190082590711831014)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190697938345286649)
,p_db_column_name=>'IMP_COMISION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Importe Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(190093994863814135)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1900940'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_DESCRIPCION:BASE_COMISION:PORC_PESO:OBJETIVO:VAL_ALCANZADO:PORC_LOGRADO:IMP_COMISION:'
,p_sum_columns_on_break=>'IMP_COMISION:BASE_COMISION:PORC_PESO'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(190082861136831017)
,p_name=>'DETALLE DE VENTAS'
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody:margin-top-lg'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FEC_COMPROBANTE,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_CLIENTE,',
'       COD_ARTICULO,',
'       DESC_ARTICULO,',
'       IMPORTE, ',
'       CANTIDAD, ',
'       MONTO_TOTAL,',
'       FLETE,',
'       PERIODO, ',
'       cod_division',
'  from VW_COMISION_VEND_DET_NP',
'  where cod_vendedor = :P580_VENDEDOR',
'  AND   COD_EMPRESA= :P_COD_EMPRESA',
'  and   periodo= :P580_MES||:P580_ANIO',
'union all ',
'',
'select FEC_COMPROBANTE,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_CLIENTE,',
'       COD_ARTICULO,',
'       DESC_ARTICULO,',
'       IMPORTE, ',
'       CANTIDAD, ',
'       MONTO_TOTAL,',
'       FLETE,',
'       PERIODO, ',
'       cod_division',
'  from VW_COMISION_VEND_DET_NP cc',
'  where periodo= :P580_MES||:P580_ANIO',
'  AND   COD_EMPRESA= :P_COD_EMPRESA',
'  AND   cc.cod_division IN (''2'',''T12'')',
'  and  (:P580_VENDEDOR = ''1827'' OR (:P580_VENDEDOR IN(''1797'',''1557'',''151'')',
'  AND EXISTS (SELECT DISTINCT ''1''',
'              FROM FV_AGRUPACION_VENDEDORES_VEN',
'              WHERE COD_VENDEDOR=:P580_VENDEDOR',
'              AND COD_VENDEDOR_REL= cc.cod_vendedor',
'              AND COD_EMPRESA= :p_cod_empresa',
'              ))',
'      )',
'',
'',
'',
'union all ',
'',
'select FEC_COMPROBANTE,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_CLIENTE,',
'       COD_ARTICULO,',
'       DESC_ARTICULO,',
'       IMPORTE, ',
'       CANTIDAD, ',
'       MONTO_TOTAL,',
'       FLETE,',
'       PERIODO, ',
'       cod_division',
'  from VW_COMISION_VEND_DET_NP cc',
'  where periodo= :P580_MES||:P580_ANIO',
'  AND   COD_EMPRESA= :P_COD_EMPRESA',
' and   :P580_VENDEDOR<>''1827''',
' AND  cc.cod_division NOT IN (''2'',''T12'')',
' AND EXISTS (SELECT DISTINCT ''1''',
'              FROM FV_AGRUPACION_VENDEDORES_VEN',
'              WHERE COD_VENDEDOR=:P580_VENDEDOR',
'              AND COD_VENDEDOR_REL= cc.cod_vendedor',
'              AND COD_EMPRESA= :p_cod_empresa',
'              )',
' ',
'  AND ( ( cc.cod_vendedor <>''133'') or  (cc.cod_vendedor =''133'' and :P580_VENDEDOR in (''94'',''151''  ))',
'                   or  ( cc.cod_vendedor =''133''',
'                      and (',
'                           (:P580_VENDEDOR =''73'' and NOT exiSts (select distinct ''1''',
'                                                                        from cc_clientes ccc,',
'                                                                             direc_personas dpc',
'                                                                        where ccc.cod_vendedor=cc.cod_vendedor',
'                                                                        and   ccc.cod_empresa= :p_cod_empresa',
'                                                                        and   ccc.cod_cliente =cc.cod_cliente',
'                                                                        and   nvl(ccc.estado,''A'')<>''I''',
'                                                                        and   dpc.cod_persona=ccc.cod_persona',
'                                                                        and   dpc.por_defecto=''S''',
'                                                                        AND   dpc.cod_pais=''PAR''',
'                                                                        AND   (  ( DPC.COD_PROVINCIA=''16'' AND dpc.cod_ciudad IN (''2'',''5'',''1'',''7''))',
'                                                                              OR ( DPC.COD_PROVINCIA=''11'' AND dpc.cod_ciudad IN (''6'',''1'',''10'')',
'                                                                              OR   ( DPC.COD_PROVINCIA=''18'' AND dpc.cod_ciudad IN (''1'')) )',
'                                                                              )))',
'                       OR',
'                    (:P580_VENDEDOR =''171'' and   exiSts (select distinct ''1''',
'                                                                                            from cc_clientes ccc,',
'                                                                                                 direc_personas dpc',
'                                                                                            where ccc.cod_vendedor=cc.cod_vendedor',
'                                                                                            and   ccc.cod_empresa=:p_cod_empresa',
'                                                                                            and   ccc.cod_cliente =cc.cod_cliente',
'                                                                                            and   nvl(ccc.estado,''A'')<>''I''',
'                                                                                            and   dpc.cod_persona=ccc.cod_persona',
'                                                                                            and   dpc.por_defecto=''S''',
'                                                                                            AND   dpc.cod_pais=''PAR''',
'                                                                                            AND   (  ( DPC.COD_PROVINCIA=''16'' AND dpc.cod_ciudad IN (''2'',''5'',''1'',''7''))',
'                                                                                                  OR ( DPC.COD_PROVINCIA=''11'' AND dpc.cod_ciudad IN (''6'',''1'',''10'')',
'                                                                                                  OR   ( DPC.COD_PROVINCIA=''18'' AND dpc.cod_ciudad IN (''1'')) )',
'                                                                                                  )))',
'               )   )',
'               )',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P580_MES,P580_ANIO,P580_VENDEDOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'csv'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083396881831022)
,p_query_column_id=>1
,p_column_alias=>'FEC_COMPROBANTE'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'dd/mm/yyyy'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190084279732831031)
,p_query_column_id=>2
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>20
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190084354927831032)
,p_query_column_id=>3
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>30
,p_column_heading=>'Ser.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083488090831023)
,p_query_column_id=>4
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>40
,p_column_heading=>'Numero'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083574522831024)
,p_query_column_id=>5
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>50
,p_column_heading=>'Cod Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083168393831020)
,p_query_column_id=>6
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>60
,p_column_heading=>unistr('C\00F3digo Articulo')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083230864831021)
,p_query_column_id=>7
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>70
,p_column_heading=>'Descripcion Articulo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190084113759831030)
,p_query_column_id=>8
,p_column_alias=>'IMPORTE'
,p_column_display_sequence=>110
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083859655831027)
,p_query_column_id=>9
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>90
,p_column_heading=>'Cant'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190083745039831026)
,p_query_column_id=>10
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>100
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'99G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190084921474831038)
,p_query_column_id=>11
,p_column_alias=>'FLETE'
,p_column_display_sequence=>120
,p_column_heading=>'Flete'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(190085075068831039)
,p_query_column_id=>12
,p_column_alias=>'PERIODO'
,p_column_display_sequence=>140
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263165160642501101)
,p_query_column_id=>13
,p_column_alias=>'COD_DIVISION'
,p_column_display_sequence=>80
,p_column_heading=>'Division'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259315309952884502)
,p_plug_name=>'CUMPLIMIENTO DE POLITICAS GASTRO'
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 CODIGO',
'       ,C002 NOMBRE_DESCRIPCION ',
'       ,N001 BASE_COMISION',
'       ,N002 PORC_PESO  ',
'       ,N003 OBJETIVO',
'       ,N004 VAL_ALCANZADO',
'       ,N005 PORC_LOGRADO',
'       ,to_NUMBER(C003) IMP_COMISION ',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_CALC_COM_CUMP'' ',
'and C001<>''5''',
'and C005=''2''',
'ORDER BY C001 ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(259315427247884503)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>259315427247884503
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(259315561075884504)
,p_db_column_name=>'CODIGO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(259315689411884505)
,p_db_column_name=>'NOMBRE_DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n Pol\00EDtica')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(259315769642884506)
,p_db_column_name=>'BASE_COMISION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Base Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(259315815570884507)
,p_db_column_name=>'PORC_PESO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'% Peso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(259315922659884508)
,p_db_column_name=>'OBJETIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(259316089565884509)
,p_db_column_name=>'VAL_ALCANZADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Real Alcanzado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(259316196086884510)
,p_db_column_name=>'PORC_LOGRADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'% Logrado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(259316245328884511)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(259316356265884512)
,p_db_column_name=>'IMP_COMISION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Importe Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(464857580398383865)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4648576'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO:NOMBRE_DESCRIPCION:BASE_COMISION:PORC_PESO:OBJETIVO:VAL_ALCANZADO:PORC_LOGRADO:SEQ_ID:IMP_COMISION'
,p_sum_columns_on_break=>'IMP_COMISION:BASE_COMISION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(642179811342635217)
,p_plug_name=>'CUMPLIMIENTO DE POLITICAS GTE'
,p_region_name=>'cobertura'
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 CODIGO',
'       ,C002 NOMBRE_DESCRIPCION ',
'       ,N001 BASE_COMISION',
'       ,N002 PORC_PESO  ',
'       ,N003 OBJETIVO',
'       ,N004 VAL_ALCANZADO',
'       ,N005 PORC_LOGRADO',
'       ,to_NUMBER(C003) IMP_COMISION ',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_CALC_COM_CUMP'' ',
'and C001=''5''',
'ORDER BY C001 ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(642179987831635218)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>642179987831635218
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(642180025120635219)
,p_db_column_name=>'CODIGO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(642180143213635220)
,p_db_column_name=>'NOMBRE_DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n Pol\00EDtica')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(642180205185635221)
,p_db_column_name=>'BASE_COMISION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Base Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(642180358637635222)
,p_db_column_name=>'PORC_PESO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'% Peso'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(642180437509635223)
,p_db_column_name=>'OBJETIVO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(642180545855635224)
,p_db_column_name=>'VAL_ALCANZADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Real Alcanzado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
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
 p_id=>wwv_flow_imp.id(642180621136635225)
,p_db_column_name=>'PORC_LOGRADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'% Logrado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G999G999G990D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(642180750365635226)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(642180824401635227)
,p_db_column_name=>'IMP_COMISION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Importe Comisi\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(724794689859121398)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'7247947'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO:NOMBRE_DESCRIPCION:BASE_COMISION:PORC_PESO:OBJETIVO:VAL_ALCANZADO:PORC_LOGRADO:SEQ_ID:IMP_COMISION'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(806115493832294915)
,p_name=>'DETALLE DE GUARDA'
,p_parent_plug_id=>wwv_flow_imp.id(188556385889494401)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 FACTURA',
'       ,C002 FECHA_FACTURA ',
'       ,C003 ULTIMA_REMISION',
'       ,N001 DIAS_GUARDA_CERRADA',
'       ,N005 CANT_NCR',
'       ,N002 CANT_FACTURADO  ',
'       ,N003 CANT_REMITIDO',
'       ,N004 CANT_PENDIENTE',
'       ,C004 GASTRO',
'       ,SEQ_ID',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''FV_GUARDA''  ',
'ORDER BY C001 ASC'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'csv'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(806116886151294929)
,p_query_column_id=>1
,p_column_alias=>'FACTURA'
,p_column_display_sequence=>10
,p_column_heading=>'Factura'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(806116959098294930)
,p_query_column_id=>2
,p_column_alias=>'FECHA_FACTURA'
,p_column_display_sequence=>20
,p_column_heading=>'Fecha Factura'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(806117060031294931)
,p_query_column_id=>3
,p_column_alias=>'ULTIMA_REMISION'
,p_column_display_sequence=>40
,p_column_heading=>'Ultima Remision'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(806117971253294940)
,p_query_column_id=>4
,p_column_alias=>'DIAS_GUARDA_CERRADA'
,p_column_display_sequence=>90
,p_column_heading=>'Dias Guarda'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(806118364931294944)
,p_query_column_id=>5
,p_column_alias=>'CANT_NCR'
,p_column_display_sequence=>70
,p_column_heading=>'Cant. NCR'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(806117204958294933)
,p_query_column_id=>6
,p_column_alias=>'CANT_FACTURADO'
,p_column_display_sequence=>50
,p_column_heading=>'Cant. Fact.'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(806117359729294934)
,p_query_column_id=>7
,p_column_alias=>'CANT_REMITIDO'
,p_column_display_sequence=>60
,p_column_heading=>'Cant. Rem.'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(806117497845294935)
,p_query_column_id=>8
,p_column_alias=>'CANT_PENDIENTE'
,p_column_display_sequence=>80
,p_column_heading=>'Saldo'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263165275767501102)
,p_query_column_id=>9
,p_column_alias=>'GASTRO'
,p_column_display_sequence=>30
,p_column_heading=>'Gastro'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(806117563866294936)
,p_query_column_id=>10
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188556430343494402)
,p_plug_name=>'LATERAL'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(188556522249494403)
,p_name=>'ESCALA DE FACTURACION'
,p_parent_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_GRUPO,',
'       MARGEN_INI,----decode(MARGEN_INI,75,decode(:P580_COD_GRUPO_POLITICA,1,MARGEN_INI,70),MARGEN_INI)MARGEN_INI,',
'       MARGEN_FIN,',
'       PORC_COM',
'  from FV_ESCALA_COMISION_PORC',
' where cod_empresa= nvl(:P_COD_EMPRESA,''1'') and',
'cod_grupo = :P580_COD_ESCALA_FAC',
'order by 3 asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P580_COD_ESCALA_FAC,P580_COD_GRUPO_POLITICA'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188556830230494406)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188556981012494407)
,p_query_column_id=>2
,p_column_alias=>'COD_GRUPO'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557094010494408)
,p_query_column_id=>3
,p_column_alias=>'MARGEN_INI'
,p_column_display_sequence=>30
,p_column_heading=>'Margen Inicial'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557172667494409)
,p_query_column_id=>4
,p_column_alias=>'MARGEN_FIN'
,p_column_display_sequence=>40
,p_column_heading=>'Margen Final'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557212561494410)
,p_query_column_id=>5
,p_column_alias=>'PORC_COM'
,p_column_display_sequence=>50
,p_column_heading=>'% Ratio'
,p_use_as_row_header=>'N'
,p_column_format=>'990D90'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(188556665821494404)
,p_name=>'ESCALA CUMPLIMIENTO DE POLITICA'
,p_parent_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_GRUPO,',
'       MARGEN_INI,',
'       MARGEN_FIN,',
'       PORC_COM',
'  from FV_ESCALA_COMISION_PORC',
' where cod_empresa=  nvl(:P_COD_EMPRESA,''1'') and',
'cod_grupo = :P580_COD_ESCALA_CUM',
'',
'order by 3 asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P580_COD_ESCALA_CUM'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557464256494412)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557567125494413)
,p_query_column_id=>2
,p_column_alias=>'COD_GRUPO'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557603503494414)
,p_query_column_id=>3
,p_column_alias=>'MARGEN_INI'
,p_column_display_sequence=>30
,p_column_heading=>'Margen Inicial'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557703194494415)
,p_query_column_id=>4
,p_column_alias=>'MARGEN_FIN'
,p_column_display_sequence=>40
,p_column_heading=>'Margen Final'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(188557808487494416)
,p_query_column_id=>5
,p_column_alias=>'PORC_COM'
,p_column_display_sequence=>50
,p_column_heading=>'% Ratio'
,p_use_as_row_header=>'N'
,p_column_format=>'990D90'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(188558087749494418)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_button_name=>'Consultar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-filter'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187805442439448450)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_button_name=>'CONFIRMAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-check'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(195728758097446415)
,p_branch_name=>'Go To Page 586'
,p_branch_action=>'f?p=&APP_ID.:586:&SESSION.::&DEBUG.::P586_VENDEDOR,P586_COD_EMPRESA,P586_PERIODO:&P580_VENDEDOR.,&P_COD_EMPRESA.,&P580_MES.&P580_ANIO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(187805442439448450)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(179991814109952740)
,p_name=>'P580_COD_GRUPO_POLITICA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187805193561448447)
,p_name=>'P580_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_VENDEDORES_VTPEDIDO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(v.descripcion, p.nombre) nombre, v.cod_vendedor, v.cod_vendedor||'' - ''||nvl(v.descripcion, p.nombre)  descri',
'  FROM fv_vendedores v, personas p',
' WHERE v.cod_empresa = NVL(:P_cod_empresa ,''1'')',
'   AND v.cod_persona = p.cod_persona',
'   AND v.estado = ''A''',
' ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187805243577448448)
,p_name=>'P580_MES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_prompt=>'MES'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LPAD(MES,2,''0'')||''-''||UPPER(DESCRIPCION) MES, LPAD(MES,2,''0'') COD',
'FROM MESES;',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(187805304277448449)
,p_name=>'P580_ANIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_prompt=>unistr('A\00D1O')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188557305244494411)
,p_name=>'P580_COD_GRUPO_COMISION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188558869592494426)
,p_name=>'P580_PORC_FACT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_item_default=>'0'
,p_prompt=>'% PESO'
,p_format_mask=>'999G999G999G999G999G990D90'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188558904100494427)
,p_name=>'P580_PORC_CUMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_item_default=>'0'
,p_prompt=>'% PESO'
,p_format_mask=>'999G999G999G999G999G990D90'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188559031066494428)
,p_name=>'P580_COD_ESCALA_FAC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188559141140494429)
,p_name=>'P580_COD_ESCALA_CUM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188559530019494433)
,p_name=>'P580_BASE_COMISION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_item_default=>'0'
,p_prompt=>'BASE COMISION '
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188559621156494434)
,p_name=>'P580_TIPO_CALCULO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188560564239494443)
,p_name=>'P580_MONTO_FACT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_prompt=>'FACTURACION'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-none'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(188560623139494444)
,p_name=>'P580_MONTO_CUMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_prompt=>'CUMPLIMIENTO POL.'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-none'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190082772106831016)
,p_name=>'P580_VTA_TOTAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_item_default=>'0'
,p_prompt=>'TOTAL DE VENTA'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190698096857286650)
,p_name=>'P580_TOT_COMISION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(188556430343494402)
,p_prompt=>'TOTAL COMISION'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(192591113126827045)
,p_name=>'P580_URL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(187805003220448446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(193662415495252018)
,p_validation_name=>'va_base'
,p_validation_sequence=>20
,p_validation=>'P580_BASE_COMISION'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'No cuenta con una Base.'
,p_when_button_pressed=>wwv_flow_imp.id(187805442439448450)
,p_associated_item=>wwv_flow_imp.id(188559530019494433)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(193662662349252020)
,p_validation_name=>'va_vta'
,p_validation_sequence=>30
,p_validation=>'P580_VTA_TOTAL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'El vendedor no registro venta para el periodo.'
,p_when_button_pressed=>wwv_flow_imp.id(187805442439448450)
,p_associated_item=>wwv_flow_imp.id(190082772106831016)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(193662771637252021)
,p_validation_name=>'va_tot_com'
,p_validation_sequence=>40
,p_validation=>'P580_TOT_COMISION'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('No cuenta con un importe de comisi\00F3n para procesar')
,p_when_button_pressed=>wwv_flow_imp.id(187805442439448450)
,p_associated_item=>wwv_flow_imp.id(190698096857286650)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(193662926431252023)
,p_validation_name=>'va_vendedor'
,p_validation_sequence=>50
,p_validation=>'P580_VENDEDOR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el Vendedor'
,p_when_button_pressed=>wwv_flow_imp.id(187805442439448450)
,p_associated_item=>wwv_flow_imp.id(187805193561448447)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(193663051567252024)
,p_validation_name=>'va_mes'
,p_validation_sequence=>60
,p_validation=>'P580_MES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe cargar el Mes'
,p_when_button_pressed=>wwv_flow_imp.id(187805442439448450)
,p_associated_item=>wwv_flow_imp.id(187805243577448448)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(193663134950252025)
,p_validation_name=>'val_anio'
,p_validation_sequence=>70
,p_validation=>'P580_ANIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe cargar el A\00F1o')
,p_when_button_pressed=>wwv_flow_imp.id(187805442439448450)
,p_associated_item=>wwv_flow_imp.id(187805304277448449)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(193664402629252038)
,p_validation_name=>'da_exist_comision'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'select DISTINCT ''1'' ',
'from inv.fv_comisiones_np',
'where cod_vendedor=:P580_VENDEDOR',
'and   periodo=:P580_MES||:P580_ANIO',
'AND COD_EMPRESA = :P_COD_EMPRESA;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('No se puede generar. El vendedor ya cuenta con una comisi\00F3n generada.')
,p_when_button_pressed=>wwv_flow_imp.id(187805442439448450)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188558188330494419)
,p_name=>'da_valida_valores'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(188558087749494418)
,p_condition_element=>'P580_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021511990674978302)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_FACT''); ',
'       ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_CUMP''); ',
'',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_GUARDA''); ',
'',
'',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021512054545978303)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188556522249494403)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021512147513978304)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188556665821494404)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021512221608978305)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558645256494424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021512306071978306)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558592768494423)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188558445497494422)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VERROR EXCEPTION;',
'    VMENSAJE VARCHAR2(500);',
'    VTA_TOTAL NUMBER(12,2):=0;',
'BEGIN',
'    IF :P580_MES IS NULL THEN',
'            VMENSAJE:=''Debe seleccionar el MES.'';',
'            raise verror;',
'    ELSE',
'        IF :P580_ANIO IS NULL THEN',
unistr('            VMENSAJE:=''Debe seleccionar el A\00D1O'';'),
'            raise verror;',
'        ELSE ',
'             DECLARE',
'                DUMMY VARCHAR2(1); ',
'            BEGIN',
'            select DISTINCT ''1''',
'                    INTO DUMMY ',
'                    from inv.fv_comisiones_np',
'                    where cod_vendedor=:P580_VENDEDOR',
'                    AND COD_EMPRESA = :P_COD_EMPRESA',
'                    and   periodo=:P580_MES||:P580_ANIO;',
'',
'                    :P580_URL := apex_page.get_url(  p_page   => 586,',
'                                                               p_items  => ''P586_COD_EMPRESA,P586_VENDEDOR,P586_PERIODO'',',
'                                                               p_values => nvl(:P_COD_EMPRESA,''1'')||'',''||:P580_VENDEDOR||'',''||:P580_MES||:P580_ANIO',
'                                                             );                                       ',
'            EXCEPTION',
'            WHEN OTHERS THEN',
'                :P580_URL:=NULL;',
'            END;',
'',
'        END IF;',
'    END IF;',
'EXCEPTION',
'    WHEN VERROR THEN',
'            raise_application_error(-20000, VMENSAJE );',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, ''Error intentar recuperar los datos.'' || sqlerrm );',
'END;    ',
'',
''))
,p_attribute_02=>'P580_VENDEDOR,P580_MES,P580_ANIO'
,p_attribute_03=>'P580_VTA_TOTAL,P580_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190697000183286640)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190697513922286645)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VERROR EXCEPTION;',
'    VMENSAJE VARCHAR2(500);',
'begin',
'   IF TO_DATE(''01/''||:P580_MES||''/''||:P580_ANIO,''DD/MM/YYYY'')<TO_DATE(''01/12/2024'',''DD/MM/YYYY'') THEN',
'              inv.fvcomisionp.pr_calcula_comision(p_cod_vendedor => :P580_VENDEDOR,',
'                                                  p_mes => :P580_MES,',
'                                                  p_anio => :P580_ANIO,',
'                                                  p_mensaje => VMENSAJE,',
'                                                  P_COD_EMPRESA=>:P_COD_EMPRESA);',
'',
'    ELSE',
'',
'              inv.fvcomisionp_V2.pr_calcula_comision(p_cod_vendedor => :P580_VENDEDOR,',
'                                                  p_mes => :P580_MES,',
'                                                  p_anio => :P580_ANIO,',
'                                                  p_mensaje => VMENSAJE,',
'                                                  P_COD_EMPRESA=>:P_COD_EMPRESA);',
'    END IF;',
'',
'        if VMENSAJE is not null then',
'            raise verror;',
'        end if;',
'',
'    SELECT  trim(to_char(round(nvl(sum(N004),0)),''999G999G999G999G999G999G990''))',
'    into :P580_VTA_TOTAL',
'    FROM APEX_COLLECTIONS  ',
'    WHERE COLLECTION_NAME = ''FV_CALC_COM_FACT'' ;',
'',
'',
'exception',
'    WHEN VERROR THEN',
'            raise_application_error(-20000, VMENSAJE );',
'    when others then',
'         raise_application_error(-20000, sqlerrm );',
'end;',
''))
,p_attribute_02=>'P580_VENDEDOR,P580_MES,P580_ANIO'
,p_attribute_03=>'P580_VTA_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190697174083286641)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188558206927494420)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558592768494423)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(190697712179286647)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558645256494424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(642180951409635228)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(642179811342635217)
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
 p_id=>wwv_flow_imp.id(190697849820286648)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(190082861136831017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(806117675799294937)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(806115493832294915)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259316465340884513)
,p_event_id=>wwv_flow_imp.id(188558188330494419)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259315309952884502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(188559257802494430)
,p_name=>'da_datos_vendedor'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P580_VENDEDOR'
,p_condition_element=>'P580_VENDEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188559776739494435)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P580_PORC_FACT,P580_PORC_CUMP,P580_BASE_COMISION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193662875253252022)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P580_COD_GRUPO_COMISION,P580_COD_ESCALA_FAC,P580_COD_ESCALA_CUM,P580_TIPO_CALCULO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188559382543494431)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P580_VTA_TOTAL:=0;',
':P580_TOT_COMISION:=0;',
'SELECT g.cod_grupo_comision,',
'       g.porc_peso_fact,',
'       g.porc_peso_cump,',
'       g.cod_escala_fact,',
'       g.cod_escala_cump,',
'       g.importe_base_comision,',
'       g.tipo_calculo_fact ,',
'       g.COD_GRUPO_POLITICA',
'into :P580_COD_GRUPO_COMISION,',
'     :P580_PORC_FACT,',
'     :P580_PORC_CUMP,',
'     :P580_COD_ESCALA_FAC,',
'     :P580_COD_ESCALA_CUM,',
'     :P580_BASE_COMISION,',
'     :P580_TIPO_CALCULO,',
'     :P580_COD_GRUPO_POLITICA',
'FROM fv_vendedores v,',
'     fv_grupos_comision g',
'WHERE v.COD_EMPRESA= nvl(:P_COD_EMPRESA,''1'')',
'and   v.cod_grupo=g.cod_grupo_comision',
'and   v.cod_empresa=g.cod_empresa',
'and   v.cod_vendedor= :P580_VENDEDOR;',
'',
'',
':P580_MONTO_CUMP:= ROUND(((:P580_BASE_COMISION*:P580_PORC_CUMP)/100));',
':P580_MONTO_FACT:= ROUND(((:P580_BASE_COMISION*:P580_PORC_FACT)/100));',
'exception',
'    when others then',
'             :P580_COD_GRUPO_COMISION:=null;',
'             :P580_PORC_FACT:=null;',
'             :P580_PORC_CUMP:=null;',
'             :P580_COD_ESCALA_FAC:=null;',
'             :P580_COD_ESCALA_CUM:=null;',
'             :P580_BASE_COMISION:=null;',
'             :P580_TIPO_CALCULO:=null;',
'        raise_application_error(-20000, ''Error al intentar recuperar los datos del Vendedor. '' || sqlerrm );',
'',
'end;'))
,p_attribute_02=>'P580_VENDEDOR'
,p_attribute_03=>'P580_COD_GRUPO_COMISION,P580_PORC_FACT,P580_PORC_CUMP,P580_COD_ESCALA_FAC,P580_COD_ESCALA_CUM,P580_TIPO_CALCULO,P580_BASE_COMISION,P580_MONTO_FACT,P580_MONTO_CUMP,P580_VTA_TOTAL,P580_TOT_COMISION,P580_COD_GRUPO_POLITICA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259316843054884517)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P580_COD_GRUPO_COMISION,P580_PORC_FACT,P580_PORC_CUMP,P580_COD_ESCALA_FAC,P580_COD_ESCALA_CUM,P580_TIPO_CALCULO,P580_BASE_COMISION,P580_MONTO_FACT,P580_MONTO_CUMP,P580_VTA_TOTAL,P580_TOT_COMISION,P580_COD_GRUPO_POLITICA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188559810373494436)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188556522249494403)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188559924818494437)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188556665821494404)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188560094576494438)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558645256494424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(188560183459494439)
,p_event_id=>wwv_flow_imp.id(188559257802494430)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558592768494423)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(192586982435827003)
,p_name=>'da_comision_tot'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(188558592768494423)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(192587018204827004)
,p_event_id=>wwv_flow_imp.id(192586982435827003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  NVL(sum(to_NUMBER(C003)) ,0)',
'into :P580_TOT_COMISION',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME in (''FV_CALC_COM_CUMP'' ,''FV_CALC_COM_FACT'')',
';'))
,p_attribute_03=>'P580_TOT_COMISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193664102514252035)
,p_name=>'DA_IR_A'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P580_URL'
,p_condition_element=>'P580_URL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193664369238252037)
,p_event_id=>wwv_flow_imp.id(193664102514252035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'El vendedor ya cuenta con una comision generada para el periodo.',
'Desea visualizarlo?'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193664282173252036)
,p_event_id=>wwv_flow_imp.id(193664102514252035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P580_URL");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193664515947252039)
,p_name=>'da_chng_vd'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P580_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193664696460252040)
,p_event_id=>wwv_flow_imp.id(193664515947252039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_FACT''); ',
'       ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_CUMP''); ',
'       ',
'',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_GUARDA''); ',
'       ',
'',
'      '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193664795748252041)
,p_event_id=>wwv_flow_imp.id(193664515947252039)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558592768494423)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193664872225252042)
,p_event_id=>wwv_flow_imp.id(193664515947252039)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558645256494424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193664951747252043)
,p_event_id=>wwv_flow_imp.id(193664515947252039)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(190082861136831017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(806117896218294939)
,p_event_id=>wwv_flow_imp.id(193664515947252039)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(806115493832294915)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1021511892014978301)
,p_event_id=>wwv_flow_imp.id(193664515947252039)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259315309952884502)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(806117743745294938)
,p_event_id=>wwv_flow_imp.id(193664515947252039)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(apex.item("P580_VENDEDOR").getValue()===''151''){ ',
'    $("#cobertura").show();',
'}else{ ',
'         ',
'    $("#cobertura").hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193665082917252044)
,p_name=>'da_chng_mes'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P580_MES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193665158148252045)
,p_event_id=>wwv_flow_imp.id(193665082917252044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_FACT''); ',
'       ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_CUMP''); ',
'       ',
'',
'      '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193665207413252046)
,p_event_id=>wwv_flow_imp.id(193665082917252044)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558592768494423)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193665326465252047)
,p_event_id=>wwv_flow_imp.id(193665082917252044)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558645256494424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193665453244252048)
,p_event_id=>wwv_flow_imp.id(193665082917252044)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(190082861136831017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1069014805916221402)
,p_event_id=>wwv_flow_imp.id(193665082917252044)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259315309952884502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(193665507841252049)
,p_name=>'da_chng_anio'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P580_ANIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(193665639537252050)
,p_event_id=>wwv_flow_imp.id(193665507841252049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_FACT''); ',
'       ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_CUMP''); ',
'       ',
'',
'      '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195727372868446401)
,p_event_id=>wwv_flow_imp.id(193665507841252049)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558592768494423)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195727489350446402)
,p_event_id=>wwv_flow_imp.id(193665507841252049)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188558645256494424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195727587465446403)
,p_event_id=>wwv_flow_imp.id(193665507841252049)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(190082861136831017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1069014705566221401)
,p_event_id=>wwv_flow_imp.id(193665507841252049)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259315309952884502)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(259316537017884514)
,p_name=>'DA_HABILITA_REGASTRO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P580_COD_GRUPO_POLITICA'
,p_condition_element=>'P580_COD_GRUPO_POLITICA'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259316629358884515)
,p_event_id=>wwv_flow_imp.id(259316537017884514)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259315309952884502)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259316721473884516)
,p_event_id=>wwv_flow_imp.id(259316537017884514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259315309952884502)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(193663234110252026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'procesa_comision'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    verror exception;',
'    vmensaje varchar2(500);',
'begin',
' ',
'        begin',
'             insert into inv.fv_comisiones_np',
'               (cod_empresa, cod_usuario, fecha_alta, periodo, mes, anio, cod_vendedor, ',
'               base_comision, peso_fact, peso_cump, tot_venta, tot_comision)',
'             values',
'               (:P_COD_EMPRESA, :app_user, sysdate, :P580_mes||:P580_anio, :P580_mes,:P580_anio, :P580_vendedor, ',
'               REPLACE(:P580_BASE_COMISION,''.'',''''), REPLACE(:P580_PORC_FACT,''.'',''''), REPLACE(:P580_PORC_CUMP,''.'',''''), ',
'               REPLACE(:P580_VTA_TOTAL,''.'',''''), REPLACE(:P580_tot_comision,''.'',''''));    ',
'',
'                ',
'                inv.fvcomisionp.pr_genera_comision(p_cod_vendedor => :P580_vendedor,',
'                                                     p_mes => :P580_mes,',
'                                                     p_anio => :P580_anio,',
'                                                     p_mensaje => vmensaje,',
'                                                     P_COD_EMPRESA=>:P_COD_EMPRESA);',
'                    if vmensaje is not null then',
'                        raise verror;',
'                    end if; ',
'        exception',
'           when others then',
'                raise_application_error(-20000,  sqlerrm );',
'        end;',
'exception',
'    when verror then',
'        raise_application_error(-20000, vmensaje);',
'    when others then ',
'        raise_application_error(-20000,  sqlerrm );',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('No se ha podido generar la comisi\00F3n.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(187805442439448450)
,p_process_success_message=>unistr('Comisi\00F3n generada!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(188560454281494442)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(190697375867286643)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_FACT''); ',
'       ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_CALC_COM_CUMP''); ',
'       ',
'       ',
'       APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FV_GUARDA''); ',
'       ',
'',
'      '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
