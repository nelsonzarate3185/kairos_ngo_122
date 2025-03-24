prompt --application/pages/page_00357
begin
--   Manifest
--     PAGE: 00357
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
 p_id=>357
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mantener Clientes'
,p_alias=>'MANTENERCLIENTES1'
,p_step_title=>'Clientes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20241002165242'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99701161394236101)
,p_plug_name=>'Clientes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT NVL(TRIM(P.NOMBRE), TRIM(P.NOMB_FANTASIA)) CLIENTE,',
'                C.COD_CLIENTE,',
'                CIP.NUMERO NCI,',
'                RIP.NUMERO RUC,',
'                NVL(TELEF1.TELEFONO, '''') || '' '' || NVL(TELEF2.TELEFONO, '''') TELEFONO,',
'                p.direc_electronica,',
'                p.direc_electronica_st,        NVL(case',
'                     when nvl(c.estado, ''A'') = ''A'' THEN',
'                      ''ACTIVO''',
'                     when nvl(c.estado, ''A'') = ''C'' THEN',
'                      ''CREDITO BLOQUEADO''',
'                     when nvl(c.estado, ''A'') = ''B'' THEN',
'                      ''BLOQUEADO''',
'                     when nvl(c.estado, ''A'') = ''I'' THEN',
'                      ''INACTIVO''',
'                   END,',
'                   ''N/A'') ESTADO_CLIENTE,',
'                   (select fv.descripcion from fv_vendedores fv where fv.cod_empresa=c.cod_empresa and fv.cod_vendedor=c.cod_vendedor)vendedor,',
'                     (select fv.descripcion from cc_tipo_cliente fv where    fv.cod_tip_cliente=c.tip_cliente)tipo_cliente,',
'                   ( select descripcion_segmento  from cc_segmentacion_linea a where a.cod_empresa=c.cod_empresa  and  a.cod_tip_segmento=c.cod_segmento_linea) segmentacion,',
'                   c.ind_acuerdo_comercial, c.porcentaje_acuerdo_comercial',
'                   ',
'  FROM CC_CLIENTES C,',
'       PERSONAS P,',
'       IDENT_PERSONAS CIP,',
'       IDENT_PERSONAS RIP,',
'       (SELECT IP.COD_PERSONA,',
'               LISTAGG(TRANSLATE(replace(codigo_area, ''5959'', ''09'') ||',
'                                 Num_telefono,',
'                                 ''!@#$%^&*().-'',',
'                                 '' ''),',
'                       ''  '') WITHIN GROUP(ORDER BY ROWNUM) TELEFONO',
'          FROM telef_personas IP',
'         group by IP.COD_PERSONA) telef2,',
'       (SELECT IP.COD_CLIENTE,',
'               LISTAGG(TRANSLATE(IP.num_telefono, ''!@#$%^&*().-'', '' ''), ''  '') WITHIN GROUP(ORDER BY IP.COD_CLIENTE) TELEFONO',
'          FROM (select distinct null num_telefono, CC.COD_CLIENTE',
'                  from CRM_CONTACTOS CD, CRM_CASOS CC',
'                 WHERE CD.ID_CASO = CC.ID_CASO',
'                   AND CC.COD_EMPRESA = ''1''',
'                   AND num_telefono IS NOT NULL) IP',
'         GROUP BY IP.COD_CLIENTE) TELEF1',
' WHERE C.COD_EMPRESA = :p_cod_empresa',
'   AND C.COD_PERSONA = P.COD_PERSONA',
'   AND C.COD_CLIENTE = TELEF1.COD_CLIENTE(+)',
'   AND C.COD_PERSONA = TELEF2.COD_PERSONA(+)',
'   AND C.COD_PERSONA = CIP.COD_PERSONA(+)',
'   AND CIP.COD_IDENT(+) = ''CI''',
'   AND C.COD_PERSONA = RIP.COD_PERSONA(+)',
'   AND RIP.COD_IDENT(+) = ''RUC''',
'   order by C.COD_CLIENTE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Clientes'
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
 p_id=>wwv_flow_imp.id(99701268719236102)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:162:P162_COD_CLIENTE:#COD_CLIENTE#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>99701268719236102
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99701485622236104)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99711494733238649)
,p_db_column_name=>'CLIENTE'
,p_display_order=>30
,p_column_identifier=>'CR'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99711533156238650)
,p_db_column_name=>'NCI'
,p_display_order=>40
,p_column_identifier=>'CS'
,p_column_label=>unistr('C\00E9dula Identidad')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99775034311177701)
,p_db_column_name=>'RUC'
,p_display_order=>50
,p_column_identifier=>'CT'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99775107275177702)
,p_db_column_name=>'TELEFONO'
,p_display_order=>60
,p_column_identifier=>'CU'
,p_column_label=>unistr('Tel\00E9fono')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99775273921177703)
,p_db_column_name=>'DIREC_ELECTRONICA'
,p_display_order=>70
,p_column_identifier=>'CV'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(99775335051177704)
,p_db_column_name=>'DIREC_ELECTRONICA_ST'
,p_display_order=>80
,p_column_identifier=>'CW'
,p_column_label=>'Email ST'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(161540053385493239)
,p_db_column_name=>'ESTADO_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'CX'
,p_column_label=>'Estado Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280541397891066434)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>100
,p_column_identifier=>'CY'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280541497037066435)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>110
,p_column_identifier=>'CZ'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(650045989729536515)
,p_db_column_name=>'SEGMENTACION'
,p_display_order=>120
,p_column_identifier=>'DB'
,p_column_label=>'Segmentacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(650046083266536516)
,p_db_column_name=>'IND_ACUERDO_COMERCIAL'
,p_display_order=>130
,p_column_identifier=>'DC'
,p_column_label=>'Ind Acuerdo Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(650046107464536517)
,p_db_column_name=>'PORCENTAJE_ACUERDO_COMERCIAL'
,p_display_order=>140
,p_column_identifier=>'DD'
,p_column_label=>'Porcentaje Acuerdo Comercial'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(99740838360239232)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'997409'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:CLIENTE:TIPO_CLIENTE:ESTADO_CLIENTE:SEGMENTACION:NCI:RUC:TELEFONO:DIREC_ELECTRONICA:VENDEDOR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99711361749238648)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(99701161394236101)
,p_button_name=>'Agregar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99775466602177705)
,p_name=>'Nuevo'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(99701161394236101)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99775567336177706)
,p_event_id=>wwv_flow_imp.id(99775466602177705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(99701161394236101)
);
wwv_flow_imp.component_end;
end;
/
