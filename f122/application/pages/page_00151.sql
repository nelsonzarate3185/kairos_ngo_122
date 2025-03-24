prompt --application/pages/page_00151
begin
--   Manifest
--     PAGE: 00151
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
 p_id=>151
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Tickets SPP'
,p_alias=>'TICKETS-SPP'
,p_step_title=>'Tickets SPP'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body .ui-dialog .ui-dialog-titlebar {',
'    background-color: #003a85;',
'    border-bottom: 1px solid rgba(0, 0, 0, 0.05);',
'    ',
'}',
'body .ui-dialog .ui-dialog-title {',
'    color: #ffee00e4;',
'    font-weight: bold !important;',
'}',
'',
'#btn, #tkt {  ',
'        display: flex;',
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
'/*',
' .t-Region-body>.container .t-Button{',
'    display: inline-block;',
'    background: darkblue;',
'    background-image: linear-gradient(180deg, darkblue  0%, #003a85 100%);',
'    color: #FFED00;',
'    margin-top: 15px;',
'    border-radius: 0.5rem;',
'    border-style: solid;',
'    border-width: 0.5px;',
'    border-color:  darkblue;',
'    ',
'    box-shadow: #6585af 1px 1px 5px 1px;',
'    ',
'}*/',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'',
'#reg_parametros{',
'      background-color: #003a85 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P151_P_FECHA_FIN, #P151_P_FECHA_INI, #P151_P_RESPONSABLE, #P151_P_TIPO_TKT {',
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
'  .a-IRR-headerLink, #P151_CHK_LABEL{',
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
,p_last_upd_yyyymmddhh24miss=>'20230322160731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104447743933494233)
,p_plug_name=>'Seguimiento de Atencion'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT      seq_id,',
'             c001   linkot,',
'             c002   tkt,',
'             c003   ser_ticket,',
'             c004   nro_ticket,',
'             c005   fecha,',
'             c006   cod_cliente,',
'             c007   nom_cliente,',
'             c008   cod_articulo,',
'             c009   desc_articulo,',
'             c010   garantia,',
'             c011   cod_tipo_ticket,',
'             c012   tipo_ticket,',
'             c013   cod_pers,',
'             c014   responsable,',
'             c015   derivar,',
'             c016   ser_ort,',
'             c017   nro_ort,',
'             c018   nci,',
'             c019   observacion,',
'             c020   nro_ticket_ref,',
'             c021   fecha_alta,',
'             c022   cod_usuario,',
'             c023   cod_prov,',
'             c024   hora_atencion,',
'             c025   deriva,',
'             c026   id_ticket,',
'             c027 nro_boleta_amarilla',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''TM_CATICKETS''   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P151_P_TIPO_TKT,P151_CHK,P151_P_RESPONSABLE,P151_P_FECHA_INI,P151_P_FECHA_FIN'
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
 p_id=>wwv_flow_imp.id(104447805322494234)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_control_break=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>104447805322494234
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104447973202494235)
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
 p_id=>wwv_flow_imp.id(104448068108494236)
,p_db_column_name=>'TKT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104448116634494237)
,p_db_column_name=>'SER_TICKET'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Ticket'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104448420236494240)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod. Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104448511882494241)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre del Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104448697577494242)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod. Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104448772370494243)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Descripcion del Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104448849738494244)
,p_db_column_name=>'COD_TIPO_TICKET'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Tipo Ticket'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104448952920494245)
,p_db_column_name=>'TIPO_TICKET'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tipo Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104449044429494246)
,p_db_column_name=>'COD_PERS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Pers'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104449115162494247)
,p_db_column_name=>'RESPONSABLE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Responsable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104449214970494248)
,p_db_column_name=>'SER_ORT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Ser Ort'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104449314391494249)
,p_db_column_name=>'NCI'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nci'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(104449434535494250)
,p_db_column_name=>'HORA_ATENCION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Hora Atencion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131484371745971401)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131484691879971404)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131484708748971405)
,p_db_column_name=>'COD_PROV'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Prov'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131484867815971406)
,p_db_column_name=>'DERIVAR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Ver'
,p_column_link=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.::P148_P_ID_TICKET,P148_P_TIPO_TKT,P148_RESPONSABLE,P148_GARANTIA,P148_OPERACION:#ID_TICKET#,#COD_TIPO_TICKET#,#COD_PERS#,#GARANTIA#,DC'
,p_column_linktext=>'<span class="t-Icon fa fa-search-plus" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131484900410971407)
,p_db_column_name=>'DERIVA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Deriva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131485168688971409)
,p_db_column_name=>'GARANTIA'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131485320507971411)
,p_db_column_name=>'NRO_BOLETA_AMARILLA'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Nro Boleta Amarilla'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131485407267971412)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131485513688971413)
,p_db_column_name=>'NRO_TICKET'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Nro Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131485650159971414)
,p_db_column_name=>'FECHA'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131485775315971415)
,p_db_column_name=>'NRO_ORT'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Nro Ort'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131485876446971416)
,p_db_column_name=>'NRO_TICKET_REF'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Nro Ticket Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131485984809971417)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131486074692971418)
,p_db_column_name=>'ID_TICKET'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Id Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(131508259773871285)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1315083'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DERIVAR:TKT:FECHA:COD_CLIENTE:NOM_CLIENTE:COD_ARTICULO:DESC_ARTICULO:TIPO_TICKET:OBSERVACION:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(132076385107865583)
,p_report_id=>wwv_flow_imp.id(131508259773871285)
,p_name=>'Con Boleta Amarilla'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NRO_BOLETA_AMARILLA'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("NRO_BOLETA_AMARILLA" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffed00'
,p_row_font_color=>'#000469'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(714044819544616063)
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
 p_id=>wwv_flow_imp.id(22301501570109038)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(714044819544616063)
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22301953918109038)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(104447743933494233)
,p_button_name=>'tkt'
,p_button_static_id=>'tkt'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Ticket'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_icon_css_classes=>'fa fa-file-text-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(133258143101371733)
,p_branch_action=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.::P148_P_TIPO_TKT,P148_OPERACION,P148_P_ID_TICKET:&P151_P_TIPO_TKT.,I,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22301953918109038)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22302382979109038)
,p_name=>'P151_P_TIPO_TKT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(714044819544616063)
,p_prompt=>'Tipo Ticket'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION,',
'       COD_TICKET',
'FROM CA_TICKETS_TIPO',
'WHERE COD_EMPRESA=''1''',
'and cod_ticket in (''10'',''09'',''07'',''05'')'))
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
 p_id=>wwv_flow_imp.id(22302764344109039)
,p_name=>'P151_P_RESPONSABLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(714044819544616063)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct P.NOMBRE,',
'       P.COD_PERSONA',
'FROM PERSONAS P',
'WHERE  P.COD_PERSONA IN  (  select distinct  cod_persona  ',
'                            from  usuarios u',
'    /*P.COD_PERSONA IN (  select distinct c.cod_persona  ',
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
'      ) AND ''GASTROST'' <> v(''APP_USER'') */',
'      )',
'      ',
'or (''GASTROST'' = v(''APP_USER'') ',
'     AND   P.cod_persona   in (''223880'',''252583'',''339458'',''366090'',''369204'',''370795''))',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_css_classes=>'itemcss'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-angle-double-down'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22303145281109039)
,p_name=>'P151_P_FECHA_INI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(714044819544616063)
,p_prompt=>'Fecha desde'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_tag_css_classes=>'itemcss'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22303534339109039)
,p_name=>'P151_P_FECHA_FIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(714044819544616063)
,p_prompt=>'Fecha hasta'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_tag_css_classes=>'itemcss'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22303934171109040)
,p_name=>'P151_CHK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(714044819544616063)
,p_item_default=>'N'
,p_prompt=>'Boleta Amarilla'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'margin-top-md:margin-right-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22304301475109040)
,p_name=>'P151_P_USUARIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(714044819544616063)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22316678586109048)
,p_name=>'Valores_dfl'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22317102375109048)
,p_event_id=>wwv_flow_imp.id(22316678586109048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'    begin',
'            select p.cod_persona ',
'            into :P151_P_RESPONSABLE',
'            from cm_proveedores p,',
'                usuarios u',
'            where p.cod_empresa=''1''',
'            and p.ind_servicio_tecnico is not null',
'            and p.cod_persona=u.cod_persona ',
'            and u.cod_usuario=v(''APP_USER'') ;',
'    exception',
'        when others then',
'                :P151_P_RESPONSABLE:=null;',
'    end ;',
':P151_P_FECHA_INI:=to_char(sysdate,''DD/MM/YYYY'');',
':P151_P_FECHA_FIN:=to_char(sysdate,''DD/MM/YYYY'');',
'*/',
'',
'begin',
'        select u.cod_persona ',
'        into :P151_P_RESPONSABLE',
'        from usuarios u',
'        where u.cod_usuario=v(''APP_USER'') ;',
'exception',
'    when others then',
'            :P151_P_RESPONSABLE:=null;',
'end ;'))
,p_attribute_02=>'P151_P_RESPONSABLE'
,p_attribute_03=>'P151_P_RESPONSABLE,P151_P_FECHA_INI,P151_P_FECHA_FIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22317620303109048)
,p_event_id=>wwv_flow_imp.id(22316678586109048)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.clearErrors();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22318066561109048)
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
 p_id=>wwv_flow_imp.id(22318587091109048)
,p_event_id=>wwv_flow_imp.id(22318066561109048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P151_P_RESPONSABLE,P151_P_TIPO_TKT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22318937940109048)
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
 p_id=>wwv_flow_imp.id(22319437054109049)
,p_event_id=>wwv_flow_imp.id(22318937940109048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P151_P_RESPONSABLE,P151_P_TIPO_TKT,P151_P_FECHA_INI,P151_P_FECHA_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43741406151884025)
,p_name=>'da_refresh_reg'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22301501570109038)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131487492963971432)
,p_event_id=>wwv_flow_imp.id(43741406151884025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtiene_datos(p_chk           => :P151_CHK,',
'                                 p_fecha_ini   => :P151_P_FECHA_INI,',
'                                 p_fecha_fin   => :P151_P_FECHA_FIN,',
'                                 p_tipo_tkt    =>  :P151_P_TIPO_TKT,',
'                                 p_responsable => :P151_P_RESPONSABLE);'))
,p_attribute_02=>'P151_CHK,P151_P_FECHA_INI,P151_P_FECHA_FIN,P151_P_TIPO_TKT,P151_P_RESPONSABLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131487545675971433)
,p_event_id=>wwv_flow_imp.id(43741406151884025)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104447743933494233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43741767135884028)
,p_name=>'da_refresh_reg1'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P151_P_FECHA_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131486426676971422)
,p_event_id=>wwv_flow_imp.id(43741767135884028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtiene_datos(p_chk           => :P151_CHK,',
'                                 p_fecha_ini   => :P151_P_FECHA_INI,',
'                                 p_fecha_fin   => :P151_P_FECHA_FIN,',
'                                 p_tipo_tkt    =>  :P151_P_TIPO_TKT,',
'                                 p_responsable => :P151_P_RESPONSABLE);'))
,p_attribute_02=>'P151_CHK,P151_P_FECHA_INI,P151_P_FECHA_FIN,P151_P_TIPO_TKT,P151_P_RESPONSABLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131486597690971423)
,p_event_id=>wwv_flow_imp.id(43741767135884028)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104447743933494233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43742038472884031)
,p_name=>'da_refresh_reg2'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P151_P_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131486686474971424)
,p_event_id=>wwv_flow_imp.id(43742038472884031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtiene_datos(p_chk           => :P151_CHK,',
'                                 p_fecha_ini   => :P151_P_FECHA_INI,',
'                                 p_fecha_fin   => :P151_P_FECHA_FIN,',
'                                 p_tipo_tkt    =>  :P151_P_TIPO_TKT,',
'                                 p_responsable => :P151_P_RESPONSABLE);'))
,p_attribute_02=>'P151_CHK,P151_P_FECHA_INI,P151_P_FECHA_FIN,P151_P_TIPO_TKT,P151_P_RESPONSABLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131486768906971425)
,p_event_id=>wwv_flow_imp.id(43742038472884031)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104447743933494233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43742610123884037)
,p_name=>'da_refresh_reg4'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P151_CHK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131486835219971426)
,p_event_id=>wwv_flow_imp.id(43742610123884037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtiene_datos(p_chk           => :P151_CHK,',
'                                 p_fecha_ini   => :P151_P_FECHA_INI,',
'                                 p_fecha_fin   => :P151_P_FECHA_FIN,',
'                                 p_tipo_tkt    =>  :P151_P_TIPO_TKT,',
'                                 p_responsable => :P151_P_RESPONSABLE);'))
,p_attribute_02=>'P151_CHK,P151_P_FECHA_INI,P151_P_FECHA_FIN,P151_P_TIPO_TKT,P151_P_RESPONSABLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131486919597971427)
,p_event_id=>wwv_flow_imp.id(43742610123884037)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104447743933494233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43742324394884034)
,p_name=>'da_refresh_reg3'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P151_P_RESPONSABLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131487060777971428)
,p_event_id=>wwv_flow_imp.id(43742324394884034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtiene_datos(p_chk           => :P151_CHK,',
'                                 p_fecha_ini   => :P151_P_FECHA_INI,',
'                                 p_fecha_fin   => :P151_P_FECHA_FIN,',
'                                 p_tipo_tkt    =>  :P151_P_TIPO_TKT,',
'                                 p_responsable => :P151_P_RESPONSABLE);'))
,p_attribute_02=>'P151_CHK,P151_P_FECHA_INI,P151_P_FECHA_FIN,P151_P_TIPO_TKT,P151_P_RESPONSABLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131487150766971429)
,p_event_id=>wwv_flow_imp.id(43742324394884034)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104447743933494233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43743541558884046)
,p_name=>'habilita_tkt'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P151_P_TIPO_TKT'
,p_condition_element=>'P151_P_TIPO_TKT'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'07,05'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43743699428884047)
,p_event_id=>wwv_flow_imp.id(43743541558884046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(22301953918109038)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43743764180884048)
,p_event_id=>wwv_flow_imp.id(43743541558884046)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(22301953918109038)
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
 p_id=>wwv_flow_imp.id(45734143323738107)
,p_name=>'refresh'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P151_P_TIPO_TKT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131487219640971430)
,p_event_id=>wwv_flow_imp.id(45734143323738107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtiene_datos(p_chk           => :P151_CHK,',
'                                 p_fecha_ini   => :P151_P_FECHA_INI,',
'                                 p_fecha_fin   => :P151_P_FECHA_FIN,',
'                                 p_tipo_tkt    =>  :P151_P_TIPO_TKT,',
'                                 p_responsable => :P151_P_RESPONSABLE);'))
,p_attribute_02=>'P151_CHK,P151_P_FECHA_INI,P151_P_FECHA_FIN,P151_P_TIPO_TKT,P151_P_RESPONSABLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131487392601971431)
,p_event_id=>wwv_flow_imp.id(45734143323738107)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104447743933494233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131486142218971419)
,p_name=>'Carga datos'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131486232812971420)
,p_event_id=>wwv_flow_imp.id(131486142218971419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_obtiene_datos(p_chk           => :P151_CHK,',
'                                 p_fecha_ini   => :P151_P_FECHA_INI,',
'                                 p_fecha_fin   => :P151_P_FECHA_FIN,',
'                                 p_tipo_tkt    =>  :P151_P_TIPO_TKT,',
'                                 p_responsable => :P151_P_RESPONSABLE);'))
,p_attribute_02=>'P151_CHK,P151_P_FECHA_INI,P151_P_FECHA_FIN,P151_P_TIPO_TKT,P151_P_RESPONSABLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131486334390971421)
,p_event_id=>wwv_flow_imp.id(131486142218971419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(104447743933494233)
);
wwv_flow_imp.component_end;
end;
/
