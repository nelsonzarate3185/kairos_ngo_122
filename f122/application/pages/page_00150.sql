prompt --application/pages/page_00150
begin
--   Manifest
--     PAGE: 00150
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
 p_id=>150
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Tickets Gastronomia'
,p_alias=>'TICKETS-GASTRONOMIA'
,p_step_title=>'Tickets Gastronomia'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar {',
'    background-color: #8BC6EC;',
'background-image: linear-gradient(180deg, #d3eeff  0%, #8BC6EC 100%);',
'}',
'',
'.t-Body-contentInner{background-color: #ccf9fb;',
'background-image: linear-gradient(180deg, #d3e5fb 0%, #a8c6d4 100%);',
'',
'}',
'',
'*/ ',
'#btn {',
'      display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'}',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'',
'#reg_parametros{',
'      background-color: #003a85 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'  ',
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
'    /*border-left: 0.5px solid black !important;    ',
'    border-right: 0.3px solid black !important;',
'    border-bottom: 1px solid black !important;*/',
'    border: 1px solid #003a85b7 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230111152621'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(467409692418144339)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(467439154611422432)
,p_plug_name=>'Seguimiento de Atencion'
,p_region_name=>'seg_atencion'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' ',
' SELECT     C001||''-''||C002 tkt,',
'            C003 fecha',
'           ,C004 cod_cliente',
'           ,C005 cod_articulo  ',
'           ,C007 cod_tipo_ticket  ',
'           ,C009 cod_pers   ',
'           ,to_date(nvl(C017,''0000''),''HH24:MI'') hora_atencion  ',
'           ,C019 observacion   ',
'           ,C006 garantia ',
'           , null LinkOT ',
'           , null derivar',
'           ,C001 ser_ticket',
'           ,C002 nro_ticket',
'           ,C018 ID_TICKET',
'           ,C020 nom_cliente',
'           ,C021 desc_articulo',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''CATICKETS''   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P150_P_RESPONSABLE,P150_P_FECHA_INI,P150_P_FECHA_FIN,P150_P_TIPO_TKT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Seguimiento de Atencion'
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
 p_id=>wwv_flow_imp.id(467439306353422433)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>467439306353422433
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22284248346104015)
,p_db_column_name=>'LINKOT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'OT'
,p_column_link=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.:CR,244:P244_COD_CLIENTE,P244_COD_ARTICULO_OT,P244_NRO_GARANTIA,P244_PARAM_ID_TKT,P244_COD_PROV:#COD_CLIENTE#,#COD_ARTICULO#,#GARANTIA#,#ID_TICKET#,#COD_PROV#'
,p_column_linktext=>'<span class="t-Icon fa fa-search-plus" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22284631350104015)
,p_db_column_name=>'TKT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ticket'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22285003216104016)
,p_db_column_name=>'SER_TICKET'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Ticket'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80986105651773728)
,p_db_column_name=>'FECHA'
,p_display_order=>40
,p_column_identifier=>'AX'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22286242132104016)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Codigo Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77961623339448640)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'AJ'
,p_column_label=>'Nombre del Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22287089253104017)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>unistr('C\00F3digo Articulo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(77961728346448641)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>80
,p_column_identifier=>'AK'
,p_column_label=>unistr('Descripci\00F3n Articulo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22291087062104020)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>90
,p_column_identifier=>'S'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80986271665773729)
,p_db_column_name=>'HORA_ATENCION'
,p_display_order=>100
,p_column_identifier=>'AY'
,p_column_label=>'Hora Atencion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22294265936104023)
,p_db_column_name=>'GARANTIA'
,p_display_order=>110
,p_column_identifier=>'AC'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22288659022104018)
,p_db_column_name=>'COD_PERS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Pers'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22289467708104019)
,p_db_column_name=>'DERIVAR'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Derivar'
,p_column_link=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.::P148_P_ID_TICKET,P148_P_TIPO_TKT,P148_OPERACION,P148_P_RESPONSABLE:#ID_TICKET#,#COD_TIPO_TICKET#,D,#COD_PERS#'
,p_column_linktext=>'<span class="t-Icon fa fa-external-link" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22287829024104018)
,p_db_column_name=>'COD_TIPO_TICKET'
,p_display_order=>150
,p_column_identifier=>'K'
,p_column_label=>'Tipo Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80986303636773730)
,p_db_column_name=>'NRO_TICKET'
,p_display_order=>160
,p_column_identifier=>'AZ'
,p_column_label=>'Nro Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(80986407500773731)
,p_db_column_name=>'ID_TICKET'
,p_display_order=>170
,p_column_identifier=>'BA'
,p_column_label=>'Id Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(467498959164564805)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2453930'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DERIVAR:TKT:FECHA:COD_CLIENTE:NOM_CLIENTE:COD_ARTICULO:DESC_ARTICULO:HORA_ATENCION:OBSERVACION:GARANTIA:LINKOT:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22281197422104012)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(467409692418144339)
,p_button_name=>'refresh'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22281532381104012)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(467439154611422432)
,p_button_name=>'tkt'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Ticket'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.::P148_P_TIPO_TKT,P148_OPERACION,P148_P_ID_TICKET:04,I,'
,p_icon_css_classes=>'fa fa-file-text-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22281992468104012)
,p_name=>'P150_P_TIPO_TKT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(467409692418144339)
,p_item_default=>'04'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22282314542104013)
,p_name=>'P150_P_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(467409692418144339)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22282745146104013)
,p_name=>'P150_P_RESPONSABLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(467409692418144339)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct P.NOMBRE,',
'       P.COD_PERSONA',
'FROM PERSONAS P',
'WHERE   ( /*P.COD_PERSONA IN (  select distinct c.cod_persona  ',
'          from cm_proveedores c ',
'          where c.cod_empresa   = ''1''        ',
'            AND NVL(C.ESTADO,''A'')NOT IN (''I'') ',
'            and ind_servicio_tecnico =''STNGO''',
'           union all',
'         select distinct c.cod_persona  ',
'          from cm_proveedores c ,',
'               usuarios u',
'          where c.cod_empresa   = ''1''        ',
'            AND NVL(C.ESTADO,''A'')NOT IN (''I'')  ',
'            and c.cod_persona=u.cod_persona',
'            and u.cod_usuario = v(''app_user'')',
'      ) AND ''GASTROST'' <> v(''APP_USER'') )',
'      ',
'or (''GASTROST'' = v(''APP_USER'') AND*/',
'        P.cod_persona in ( select distinct cod_PERS',
'                          from inv.vw_ticket_atencion N ',
'                          WHERE cod_tipo_ticket=''04'' )',
'        ---   in (''223880'',''252583'',''339458'',''366090'',''369204'',''370795'',''340184'')',
'        ',
'        )',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_css_classes=>'itemcss'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-angle-double-down'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22283132472104013)
,p_name=>'P150_P_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(467409692418144339)
,p_prompt=>'Fecha desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_tag_css_classes=>'itemcss'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22283586187104014)
,p_name=>'P150_P_FECHA_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(467409692418144339)
,p_prompt=>'Fecha hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_tag_css_classes=>'itemcss'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22295807201104025)
,p_name=>'Valores_dfl'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22296353258104025)
,p_event_id=>wwv_flow_imp.id(22295807201104025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''CATICKETS'');',
'',
'begin',
'        select p.cod_persona ',
'        into :P150_P_RESPONSABLE',
'        from cm_proveedores p,',
'            usuarios u',
'        where p.cod_empresa=''1''',
'        and p.ind_servicio_tecnico is not null',
'        and p.cod_persona=u.cod_persona ',
'        and u.cod_usuario=v(''APP_USER'') ;',
'exception',
'    when others then',
'            :P150_P_RESPONSABLE:=null;',
'end ;'))
,p_attribute_02=>'P150_P_RESPONSABLE'
,p_attribute_03=>'P150_P_RESPONSABLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22296754851104025)
,p_name=>'habilita_resp'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select p.cod_persona  ',
'        from cm_proveedores p,',
'            usuarios u',
'        where p.cod_empresa=''1''',
'        and p.ind_servicio_tecnico is not null',
'        and p.cod_persona=u.cod_persona ',
'        and u.cod_usuario=v(''APP_USER'') ;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22297292254104025)
,p_event_id=>wwv_flow_imp.id(22296754851104025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_P_RESPONSABLE,P150_P_TIPO_TKT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22297629048104026)
,p_name=>'habilita_recepcion'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ''1''',
'from usuarios ',
'where cod_empresa=''1'' ',
'and   cod_grupo=''SERTEC''',
'and   COD_USUARIO = v(''APP_USER'') ',
'AND   ( COD_USUARIO LIKE ''SALON%'' OR COD_USUARIO LIKE ''CAJA%'')'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22298193541104026)
,p_event_id=>wwv_flow_imp.id(22297629048104026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_P_RESPONSABLE,P150_P_TIPO_TKT,P150_P_FECHA_INI,P150_P_FECHA_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77958582612448609)
,p_name=>'Da_carga_grilla'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22281197422104012)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77958809489448612)
,p_event_id=>wwv_flow_imp.id(77958582612448609)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77958691762448610)
,p_event_id=>wwv_flow_imp.id(77958582612448609)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  inv.catickets.carga_datos(pi_cod_empresa => :p_cod_empresa,',
'                            pi_fecha_ini => :p150_P_fecha_ini,',
'                            pi_fecha_fin => :p150_P_fecha_fin,',
'                            pi_responsable => :p150_P_responsable,',
'                            pi_tipo_ticket => nvl(:p150_P_tipo_tkt,''04''));'))
,p_attribute_02=>'P150_P_RESPONSABLE,P150_P_FECHA_INI,P150_P_FECHA_FIN,P150_P_TIPO_TKT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77958922843448613)
,p_event_id=>wwv_flow_imp.id(77958582612448609)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77958737734448611)
,p_event_id=>wwv_flow_imp.id(77958582612448609)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(467439154611422432)
);
wwv_flow_imp.component_end;
end;
/
