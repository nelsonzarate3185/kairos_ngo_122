prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ordenes de Trabajo'
,p_alias=>'ORDENES-DE-TRABAJO'
,p_step_title=>'Ordenes de Trabajo'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color:  hsl(147, 69%, 87%)  !important;',
'   border-color:  #c9fceb  !important;',
'}',
'',
'',
'#GRILLA   th.a-IRR-header {',
'  background-color:  #003A85;',
'  color: yellow;',
' /* border-color: rgb(43, 79, 80);*/',
'}',
'',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'',
'#PARAMETROS{',
'      background-color: #003a85 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P94_FECHA_FIN, #P94_FECHA_INI, #P94_ORIGEN, #P94_ESTADO, #P94_CLIENTE {',
'    background: white;',
'    border-color: yellow; ',
'    color: darkblue;',
'}      ',
'',
' .a-IRR-header{',
'      background-color: #003a85 !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85 !important;',
'	  color: #FFED00 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
'',
'',
'#btn{ ',
'       ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'}',
'',
'',
' ',
'',
'',
'',
'.chip {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05);',
'}',
'',
'.chip-success {',
'    background: #cdffe0;',
'    color: #00592e;',
'}',
'',
'.chip-danger {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.chip-warning {',
'    background: #fffedc;',
'    color: #764400;',
'}',
'',
'.chip-primary {',
'    background: #e9f5ff;',
'    color: #004f95;',
'}',
'',
'.chip-purple {',
'    background: #eddbfa;',
'    color: #5200a5;',
'}',
'',
'.chip-pink {',
'    background: #ffeffa;',
'    color: #990067;',
'}',
'',
'.chip-orange {',
'    background: #fff2e4;',
'    color: #8d3600;',
'}',
'',
'.chip-teal {',
'    background: #e4fdff;',
'    color: #00526e;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20221228100433'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(201405987750506565)
,p_plug_name=>'Parametros'
,p_region_name=>'PARAMETROS'
,p_region_template_options=>'t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(202349731250692840)
,p_plug_name=>'Ordenes de trabajo'
,p_region_name=>'GRILLA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  OT.SER_COMPROBANTE ||''-''|| OT.NRO_COMPROBANTE OT,        ',
'       ---- EO.DESCRIPCION ESTADO,',
'       NVL(( SELECT ''<span class="chip chip-PINK  ">''||CCC.ESTADO||''</span> ''                   ',
'                        FROM ca_ots_a_rendir_det  CCC',
'                        WHERE CCC.COD_PROVEEDOR   = ot.cod_proveedor',
'                        AND CCC.NRO_COMPROBANTE =  ot.nro_comprobante',
'                        AND CCC.SER_COMPROBANTE =  ot.ser_comprobante',
'                        AND ROWNUM=1),',
'        CASE ',
'            WHEN OT.ESTADO_PRESU IN (''CPR'',''CRR'',''CSR'',''CSS'',''CE'',''CAD'',''VR'') THEN  ---- Azul',
'            ''<span class="chip chip-warning ">''||EO.DESCRIPCION||''</span> ''',
'',
'            WHEN  OT.ESTADO_PRESU IN (''RMC'',''RME'',''RRE'',''RSPP'',''RSPPE'',''R'',''RU'') THEN ------ ROJO',
'            ''<span class="chip chip-danger ">''||EO.DESCRIPCION||''</span> ''',
'',
'            WHEN OT.ESTADO_PRESU IN (''C'',''E'',''RN'') THEN -------Celeste',
'            ''<span class="chip chip-success ">''||EO.DESCRIPCION||''</span> ''',
'',
'            WHEN  OT.ESTADO_PRESU IN (''CAD'',''CO'',''LI'',''RB'') THEN  ------ Amarillo',
'            ''<span class="chip chip-orange ">''||EO.DESCRIPCION||''</span> '' ',
'',
'            WHEN  OT.ESTADO_PRESU IN (''A'',''AP'',''P'') THEN --------  Verde',
'            ''<span class="chip chip-primary ">''||EO.DESCRIPCION||''</span> ''   ',
'',
'            WHEN  OT.ESTADO_PRESU IN (''CR'',''EP'',''PE'',''PR'',''RI'',''V'') THEN ----Purpura',
'            ''<span class="chip chip-teal  ">''||EO.DESCRIPCION||''</span> '' ',
'            else',
'            ''<span class="chip chip-purple  ">''||EO.DESCRIPCION||''</span> '' ',
'           END  ) estado,',
'        OT.SER_COMPROBANTE ,   ',
'        OT.NRO_COMPROBANTE ,',
'        OT.FEC_COMPROBANTE FECHA,      ',
'        OT.GARANTIA_OT,    ',
'        OT.COD_ARTICULO ,',
'        nvl(AR.DESCRIPCION,ot.cod_articulo_call) DESC_ARTICULO,',
'        OT.COD_EMPRESA,  ',
'        OT.TIP_COMPROBANTE, ',
'        OT.ESTADO_PRESU,',
'        OT.SERIE,',
'        OT.COD_ORIGEN,',
'        OT.IND_GARANTIA,',
'        OT.IND_ENTREGA,',
'        OT.Fec_Cierre,',
'        ot.fec_entrega,',
'        ot.cod_distribuidor,   ',
'        OT.COD_CLIENTE,',
'        OT.NOM_CLIENTE,',
'        ot.COD_STA,',
'        ot.nro_ot_proveedor',
'from vt_ordenes_trabajo ot,',
'     st_articulos ar,',
'     ca_estado_ot eo',
'where nvl(ot.anulado,''N'')<>''S''',
'and   ot.fec_comprobante is not null',
'and   OT.COD_ARTICULO=AR.COD_ARTICULO(+)',
'AND   OT.COD_EMPRESA=AR.COD_EMPRESA(+)',
'AND   OT.ESTADO_PRESU=EO.COD_ESTADO',
'AND   OT.COD_EMPRESA=EO.COD_EMPRESA',
'AND   (NVL(:P60_ESTADO,''T'') =''T'' OR :P60_ESTADO=OT.ESTADO_PRESU)',
'AND   (NVL(:P60_CLIENTE,''T'')=''T'' OR :P60_CLIENTE=OT.COD_CLIENTE)',
'AND   ( :P60_PROVEEDOR is null OR :P60_PROVEEDOR=OT.COD_PROVEEDOR)',
'AND   ( :P60_NRO_OT is null OR :P60_NRO_OT=OT.NRO_COMPROBANTE)',
'AND   ( :P60_SER_OT is null OR :P60_SER_OT=OT.SER_COMPROBANTE) ',
'AND   ( :P60_ORIGEN is null OR :P60_ORIGEN=OT.COD_ORIGEN) ',
'AND   ( :P60_FECHA_INI is null OR OT.FEC_COMPROBANTE >= TO_DATE(:P60_FECHA_INI,''DD/MM/YYYY''))',
'AND   ( :P60_FECHA_FIN is null OR OT.FEC_COMPROBANTE <= TO_DATE(:P60_FECHA_FIN,''DD/MM/YYYY''))',
'and   ( :P60_PARAM_CLIENTE is null or :P60_PARAM_CLIENTE=ot.COD_CLIENTE)',
'',
'order by ot.FEC_CREACION desc;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ordenes de trabajo'
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
 p_id=>wwv_flow_imp.id(202350093102692840)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.:RR,244:P244_PARAM_NRO_OT,P244_PARAM_SER_OT,P244_COD_CLIENTE:NRO_COMPROBANTE,SER_COMPROBANTE,COD_CLIENTE'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-search-plus" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'JUANSA'
,p_internal_uid=>202350093102692840
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12783591709490020)
,p_db_column_name=>'OT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA OT')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12783984325490020)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12784316863490021)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12784777880490021)
,p_db_column_name=>'ESTADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12789930814490023)
,p_db_column_name=>'FECHA'
,p_display_order=>90
,p_column_identifier=>'U'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12790366512490023)
,p_db_column_name=>'GARANTIA_OT'
,p_display_order=>100
,p_column_identifier=>'V'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12790714480490024)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>110
,p_column_identifier=>'W'
,p_column_label=>unistr('C\00F3digo Articulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12791198446490024)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>120
,p_column_identifier=>'X'
,p_column_label=>'Descripcion Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12785182076490021)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>130
,p_column_identifier=>'I'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12785501516490021)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>140
,p_column_identifier=>'J'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12785906206490021)
,p_db_column_name=>'ESTADO_PRESU'
,p_display_order=>150
,p_column_identifier=>'K'
,p_column_label=>'Estado Presu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12786372187490022)
,p_db_column_name=>'SERIE'
,p_display_order=>160
,p_column_identifier=>'L'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12786721463490022)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>170
,p_column_identifier=>'M'
,p_column_label=>'Cod Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12787176713490022)
,p_db_column_name=>'IND_GARANTIA'
,p_display_order=>180
,p_column_identifier=>'N'
,p_column_label=>'Ind Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12787563983490022)
,p_db_column_name=>'IND_ENTREGA'
,p_display_order=>190
,p_column_identifier=>'O'
,p_column_label=>'Ind Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12787950898490022)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>200
,p_column_identifier=>'P'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12788326081490022)
,p_db_column_name=>'FEC_ENTREGA'
,p_display_order=>210
,p_column_identifier=>'Q'
,p_column_label=>'Fec Entrega'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12788748430490023)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>220
,p_column_identifier=>'R'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12789190510490023)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>230
,p_column_identifier=>'S'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12789511233490023)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>240
,p_column_identifier=>'T'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12791531550490024)
,p_db_column_name=>'COD_STA'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Sta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12791964837490024)
,p_db_column_name=>'NRO_OT_PROVEEDOR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Nro Ot Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(202359828785694585)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1783578'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GARANTIA_COD_EMPRESA_PRESU:ARTICULO1_PRESU_:COD_DESCRIPCION:OT:SER_COMPROBANTE:NRO_COMPROBANTE:ESTADO:COD_EMPRESA:TIP_COMPROBANTE:ESTADO_PRESU:SERIE:COD_ORIGEN:IND_GARANTIA:IND_ENTREGA:FEC_CIERRE:FEC_ENTREGA:COD_DISTRIBUIDOR:COD_CLIENTE:NOM_CLIENTE:F'
||'ECHA:GARANTIA_OT:COD_ARTICULO:DESC_ARTICULO:COD_STA:NRO_OT_PROVEEDOR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12792688051490025)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(202349731250692840)
,p_button_name=>'CREATE'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear OT'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.:CR,244::'
,p_button_css_classes=>'u-color-1-bg'
,p_icon_css_classes=>'fa fa-pencil'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12793330635490026)
,p_name=>'P60_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(201405987750506565)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.cod_proveedor',
'from usuarios u,',
'     cm_proveedores p',
'where u.cod_usuario= v(''app_user'')',
'AND   u.cod_persona=p.cod_persona',
'AND   p.cod_empresa=''1''',
'AND   NVL(p.ESTADO,''A'')NOT IN (''I'') ',
'AND   p.ind_servicio_tecnico =''STNGO'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12793759225490026)
,p_name=>'P60_PARAM_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(201405987750506565)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12794102194490026)
,p_name=>'P60_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(201405987750506565)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct pr.nombre,cl.cod_cliente',
'from  VW_ORDENES_TRABAJO_APX v,',
'      cc_clientes cl,',
'      personas pr',
'where v.COD_EMPRESA=cl.COD_EMPRESA',
'and   v.COD_CLIENTE=cl.cod_cliente',
'and   cl.cod_persona=pr.cod_persona',
'and   nvl(cl.estado,'''')<>''I''',
'AND   ( :P60_PROVEEDOR is null OR :P60_PROVEEDOR=v.COD_PROVEEDOR)',
'and   ( :P60_PARAM_CLIENTE is null or :P60_PARAM_CLIENTE=v.COD_CLIENTE)',
'union all',
'',
'select ''TODOS'',''T''',
'FROM DUAL',
'order by 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12794586813490026)
,p_name=>'P60_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(201405987750506565)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct estado, estado_presu',
'from  VW_ORDENES_TRABAJO_APX t',
'union all',
'select ''TODOS'', ''T''',
'FROM DUAL',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12794960780490026)
,p_name=>'P60_FECHA_INI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(201405987750506565)
,p_item_default=>'trunc(sysdate-90)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha desde'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12795361952490026)
,p_name=>'P60_FECHA_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(201405987750506565)
,p_prompt=>'Fecha hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12795723755490027)
,p_name=>'P60_ORIGEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(201405987750506565)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.descripcion, o.cod_origen',
'from vt_origenes o,',
'     cm_proveedores p,',
'     usuarios u',
'where o.cod_empresa=''1''',
'and o.activo=''S''',
'and o.cod_empresa=p.cod_empresa',
'and o.origen=p.ind_servicio_tecnico',
'and p.cod_persona=u.cod_persona',
'and (v(''APP_USER'')not in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''JOSEALF'',''EVERAQUI'',''ALEMCE'',''GASTROST'') ',
'        or (v(''APP_USER'') in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''JOSEALF'',''EVERAQUI'',''ALEMCE'',''GASTROST'')  and o.cod_origen in(''38'',''15'')))',
'and u.cod_usuario=v(''APP_USER'')',
'union all ',
'select o.descripcion, o.cod_origen',
'from vt_origenes o  ',
'where o.cod_empresa=''1''',
'and o.activo=''S''',
'and not exists (',
'      Select distinct ''1''',
'      from  cm_proveedores p,',
'            usuarios u',
'      where p.cod_empresa=''1'' ',
'      and p.ind_servicio_tecnico is not null',
'      and p.cod_persona=u.cod_persona',
'      and u.cod_usuario=v(''APP_USER'')',
'     )',
'',
'',
'     ',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12796141729490027)
,p_name=>'P60_USER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(201405987750506565)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12796507622490027)
,p_name=>'P60_SER_OT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(201405987750506565)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12796908514490027)
,p_name=>'P60_NRO_OT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(201405987750506565)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12797337737490027)
,p_name=>'CLIC_EST'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12797825766490028)
,p_event_id=>wwv_flow_imp.id(12797337737490027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12798231821490028)
,p_name=>'CLIC_CL'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12798712401490028)
,p_event_id=>wwv_flow_imp.id(12798231821490028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12799195463490028)
,p_name=>'CHNG_FEC_INI'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_FECHA_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12799649984490028)
,p_event_id=>wwv_flow_imp.id(12799195463490028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12800045463490028)
,p_name=>'CHNG_FEC_FIN'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12800515707490029)
,p_event_id=>wwv_flow_imp.id(12800045463490028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12800992297490029)
,p_name=>'Sltd_origen'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_ORIGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12801487623490029)
,p_event_id=>wwv_flow_imp.id(12800992297490029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
