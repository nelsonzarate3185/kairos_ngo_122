prompt --application/pages/page_00149
begin
--   Manifest
--     PAGE: 00149
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
 p_id=>149
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Visor de Tickets'
,p_alias=>'VISOR-DE-TICKETS'
,p_step_title=>'Visor de Tickets'
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
'    ',
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
'#P149_P_FECHA_FIN, #P149_P_FECHA_INI, #P149_P_RESPONSABLE, #P149_P_TIPO_TKT {',
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
'    /*border-left: 0.5px solid black !important;    ',
'    border-right: 0.3px solid black !important;',
'    border-bottom: 1px solid black !important;*/',
'    border: 1px solid #003a85b7 !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230321075649'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131487647882971434)
,p_plug_name=>'Seguimiento de Atencion'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     seq_id,',
'             c001    linkot,',
'             c002    retira_ot,',
'             c003    tkt,',
'             c004    ser_ticket,',
'             c005    nro_ticket,',
'             c006    fecha,',
'             c007    cod_cliente,',
'             c008    nom_cliente,',
'             c009    cod_articulo,',
'             c010    desc_articulo,',
'             c011    garantia,',
'             c012    cod_tipo_ticket,',
'             c013    tipo_ticket,',
'             c014    cod_pers,',
'             c015   responsable,',
'             c016    derivar,',
'             c017    ser_ort,',
'             c018    nro_ort,',
'             c019    nci,',
'             c020    observacion,',
'             c021    nro_ticket_ref,',
'             c022    fecha_alta,',
'             c023    cod_usuario,',
'             c024    cod_prov,',
'             c025    hora_atencion,',
'             c026    deriva,',
'             c027    id_ticket',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''TM_TICKETS'' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P149_P_TIPO_TKT,P149_P_FECHA_INI,P149_P_FECHA_FIN,P149_P_USUARIO,P149_P_RESPONSABLE'
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
 p_id=>wwv_flow_imp.id(131487756443971435)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>131487756443971435
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131487869269971436)
,p_db_column_name=>'LINKOT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'OT'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:CR,63:P63_COD_CLIENTE,P63_COD_ARTICULO_OT,P63_NRO_GARANTIA,P63_PARAM_ID_TKT,P63_COD_PROV:#COD_CLIENTE#,#COD_ARTICULO#,#GARANTIA#,#ID_TICKET#,#COD_PROV#'
,p_column_linktext=>'<span class="t-Icon fa fa-search-plus" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131487952693971437)
,p_db_column_name=>'TKT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131488052752971438)
,p_db_column_name=>'SER_TICKET'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Ticket'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131488345082971441)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131488451906971442)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131488531925971443)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131488693720971444)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131488770790971445)
,p_db_column_name=>'GARANTIA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131488828963971446)
,p_db_column_name=>'COD_TIPO_TICKET'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Tipo Ticket'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131488917717971447)
,p_db_column_name=>'TIPO_TICKET'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Tipo Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131489091564971448)
,p_db_column_name=>'COD_PERS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Pers'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131489159083971449)
,p_db_column_name=>'RESPONSABLE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Responsable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131489200058971450)
,p_db_column_name=>'SER_ORT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ser Ort'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132043661011968501)
,p_db_column_name=>'NRO_ORT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Nro Ort'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132043799360968502)
,p_db_column_name=>'NCI'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nci'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132043840341968503)
,p_db_column_name=>'HORA_ATENCION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Hora Atencion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132043992752968504)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132044215204968507)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132044397292968508)
,p_db_column_name=>'COD_PROV'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Cod Prov'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132044480551968509)
,p_db_column_name=>'DERIVAR'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Derivar'
,p_column_link=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::P100_P_ID_TICKET,P100_P_TIPO_TKT,P100_OPERACION:#ID_TICKET#,#COD_TIPO_TICKET#,I'
,p_column_linktext=>'<span class="t-Icon fa fa-external-link" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132044509479968510)
,p_db_column_name=>'RETIRA_OT'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Retira Ot'
,p_column_link=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.::P130_COD_CLIENTE:#COD_CLIENTE#'
,p_column_linktext=>'#RETIRA_OT#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132044668343968511)
,p_db_column_name=>'DERIVA'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Deriva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132044837689968513)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132044946491968514)
,p_db_column_name=>'NRO_TICKET'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'Nro Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132045044914968515)
,p_db_column_name=>'FECHA'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132045137890968516)
,p_db_column_name=>'NRO_TICKET_REF'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Nro Ticket Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132045243504968517)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132045351743968518)
,p_db_column_name=>'ID_TICKET'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'Id Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(132061049850964183)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1320611'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINKOT:TKT:FECHA:COD_CLIENTE:NOM_CLIENTE:TIPO_TICKET:OBSERVACION:RETIRA_OT:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222009733337307180)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22259754437095449)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(222009733337307180)
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
 p_id=>wwv_flow_imp.id(22260157443095449)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(131487647882971434)
,p_button_name=>'tkt'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Ticket'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.::P148_P_TIPO_TKT,P148_OPERACION,P148_P_ID_TICKET:&P149_P_TIPO_TKT.,I,'
,p_button_condition=>'P149_P_TIPO_TKT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa fa-file-text-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22260597208095450)
,p_name=>'P149_P_TIPO_TKT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(222009733337307180)
,p_prompt=>'Tipo Ticket'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION,',
'       COD_TICKET',
'FROM CA_TICKETS_TIPO',
'WHERE COD_EMPRESA=''1''',
'and  COD_TICKET  in(''02'',''01'',''03'',''08'')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_css_classes=>'itemcss'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-angle-double-down'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22260919620095450)
,p_name=>'P149_P_USUARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(222009733337307180)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22261341767095450)
,p_name=>'P149_P_RESPONSABLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(222009733337307180)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct P.NOMBRE,',
'       P.COD_PERSONA',
'FROM PERSONAS P',
'WHERE   ( P.COD_PERSONA IN (  select distinct c.cod_persona  ',
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
'or (''GASTROST'' = v(''APP_USER'') ',
'     AND   P.cod_persona   in (''223880'',''252583'',''339458'',''366090'',''369204'',''370795''))',
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
 p_id=>wwv_flow_imp.id(22261769101095451)
,p_name=>'P149_P_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(222009733337307180)
,p_prompt=>'Fecha desde'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_tag_css_classes=>'itemcss'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'focus'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22262182058095451)
,p_name=>'P149_P_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(222009733337307180)
,p_prompt=>'Fecha hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_tag_css_classes=>'itemcss'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22273967837095461)
,p_name=>'Refresh_Treg'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_P_TIPO_TKT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132045748710968522)
,p_event_id=>wwv_flow_imp.id(22273967837095461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtiene_datos_ticket( p_fecha_ini   => :P149_P_FECHA_INI,',
'                                        p_fecha_fin  =>  :P149_P_FECHA_FIN,',
'                                        p_tipo_tkt    => :P149_P_TIPO_TKT,',
'                                        p_responsable => :P149_P_RESPONSABLE);'))
,p_attribute_02=>'P149_P_FECHA_INI,P149_P_FECHA_FIN,P149_P_TIPO_TKT,P149_P_RESPONSABLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132045855717968523)
,p_event_id=>wwv_flow_imp.id(22273967837095461)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131487647882971434)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22274879743095461)
,p_name=>'Valores_dfl'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22275356901095461)
,p_event_id=>wwv_flow_imp.id(22274879743095461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        select p.cod_persona ',
'        into :P149_P_RESPONSABLE',
'        from cm_proveedores p,',
'            usuarios u',
'        where p.cod_empresa=''1''',
'        and p.ind_servicio_tecnico is not null',
'        and p.cod_persona=u.cod_persona ',
'        and u.cod_usuario=v(''APP_USER'') ;',
'exception',
'    when others then',
'            :P149_P_RESPONSABLE:=null;',
'end ;'))
,p_attribute_03=>'P149_P_RESPONSABLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22275736035095461)
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
 p_id=>wwv_flow_imp.id(22276265006095462)
,p_event_id=>wwv_flow_imp.id(22275736035095461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_P_RESPONSABLE,P149_P_TIPO_TKT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22276627675095462)
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
 p_id=>wwv_flow_imp.id(22277170971095462)
,p_event_id=>wwv_flow_imp.id(22276627675095462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_P_RESPONSABLE,P149_P_TIPO_TKT,P149_P_FECHA_INI,P149_P_FECHA_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132045488479968519)
,p_name=>'Carga datos'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132045587006968520)
,p_event_id=>wwv_flow_imp.id(132045488479968519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtiene_datos_ticket( p_fecha_ini   => :P149_P_FECHA_INI,',
'                                        p_fecha_fin  =>  :P149_P_FECHA_FIN,',
'                                        p_tipo_tkt    => :P149_P_TIPO_TKT,',
'                                        p_responsable => :P149_P_RESPONSABLE);'))
,p_attribute_02=>'P149_P_FECHA_INI,P149_P_FECHA_FIN,P149_P_TIPO_TKT,P149_P_RESPONSABLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132045649256968521)
,p_event_id=>wwv_flow_imp.id(132045488479968519)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131487647882971434)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132045983485968524)
,p_name=>'Obtiene detalles'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22259754437095449)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132046176491968526)
,p_event_id=>wwv_flow_imp.id(132045983485968524)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtiene_datos_ticket( p_fecha_ini   => :P149_P_FECHA_INI,',
'                                        p_fecha_fin  =>  :P149_P_FECHA_FIN,',
'                                        p_tipo_tkt    => :P149_P_TIPO_TKT,',
'                                        p_responsable => :P149_P_RESPONSABLE);'))
,p_attribute_02=>'P149_P_FECHA_INI,P149_P_FECHA_FIN,P149_P_TIPO_TKT,P149_P_RESPONSABLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132046224869968527)
,p_event_id=>wwv_flow_imp.id(132045983485968524)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131487647882971434)
);
wwv_flow_imp.component_end;
end;
/
