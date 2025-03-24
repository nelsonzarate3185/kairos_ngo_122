prompt --application/pages/page_00144
begin
--   Manifest
--     PAGE: 00144
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
 p_id=>144
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Derivaciones'
,p_alias=>'DERIVACIONES'
,p_page_mode=>'MODAL'
,p_step_title=>'Derivaciones'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'.a-IRR-table tr td {',
'    background-color: #ffffff;',
'    font-size: var(--jui-dialog-title-font-size,12px);',
'    color: #000000;',
'   /* font-family: cursive;*/',
'    font-weight: bold;',
'}',
'/*de la modal de inline dialog*/',
'body .ui-widget-header {',
'    background-color: #003a85;',
'    color: #FFED00;',
'}',
'.t-Cards--featured .t-Card-body {',
'    border-top: 1px solid rgba(0,0,0,.075);',
'    padding: 16px;',
'    background-color: #003a85 !important;',
'   ',
'   ',
'}',
' .t-Card-desc {',
'    color: #FFED00;',
'    font-weight: bold;',
'}',
'/*background: #003a85 !important;',
'    background-color: #003a85 !important;',
'	color: #FFED00 !important; */',
'.t-Region--accent1>.t-Region-header {',
'    background-color: #003a85;',
'    color: #FFED00;',
'}    ',
'.a-IRR-header {',
'    ',
'    background-color: #003a85 !important;',
'	color: #FFED00 !important; ',
'}',
'a {',
'    color: #FFED00;',
'}',
'',
'.ui-dialog {',
'    --jui-dialog-title-close-border-radius: 100%;',
'    --jui-dialog-shadow: 0 4px 16px -4px rgba(0,0,0,0.2),0 8px 24px 0 rgba(0,0,0,0.15),0 0 0 1px rgba(0,0,0,0.2);',
'    --jui-dialog-titlebar-border-width: 1px;',
'    --jui-dialog-titlebar-border-color: rgba(0,0,0,0.05);',
'    --jui-dialog-titlebar-background-color: #003a85;',
'    --jui-dialog-titlebar-text-color: #FFED00;',
'    --jui-dialog-buttonpane-border-color: #ebebeb;',
'}',
'#btn ,#CERRAR{',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;}',
'',
''))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_attributes=>'closeOnEscape:false'
,p_dialog_css_classes=>'no-close'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20230322135708'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21759772459052333)
,p_plug_name=>'BOTONES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54708390925007773)
,p_plug_name=>'Lista de Derivaciones'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(55014618591642812)
,p_plug_name=>'Derivaciones'
,p_parent_plug_id=>wwv_flow_imp.id(54708390925007773)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rowid,',
'       ID_CASO,',
'       ID_CONTACTO,',
'       C.COD_EMPRESA,',
'       ID_DERIVACION,',
'       ID_DERIVACION_PADRE,',
'       AREA_DERIVADA COD_AREA_DERIV,',
'       (SELECT R.DESCRIPCION',
'          FROM RH_AREAS R',
'         WHERE R.COD_EMPRESA  = C.COD_EMPRESA',
'           AND R.COD_SUCURSAL = C.SUCURSAL_DERIVADA',
'           AND R.COD_AREA     = C.AREA_DERIVADA) AREA_DERIVADA,',
'       (SELECT D.DESCRIPCION',
'          FROM RH_DEPARTAMENTOS D',
'         WHERE D.COD_EMPRESA  = C.COD_EMPRESA ',
'           AND D.COD_SUCURSAL = C.SUCURSAL_DERIVADA',
'           AND D.COD_AREA     = C.AREA_DERIVADA ',
'           AND D.COD_DEPARTAMENTO = C.DPTO_DERIVADO)DPTO_DERIVADO,',
'       OPERADOR_REC,',
'       FECHA_REC,',
'       OBS_REC,',
'       OPER_DERIV,',
'       FECHA_DERIV,',
'       OBS_DERIVADA,',
'       (SELECT E.DESCRIPCION FROM CRM_ESTADOS E WHERE E.COD_EMPRESA = C.COD_EMPRESA AND E.COD_ESTADO = C.ESTADO) ESTADO,',
'       DECODE(ESTADO,''1'',''N'',''S'')BLOQUEAR,',
'       ''X''LINK_PRUEBA,',
'       CASE WHEN C.ID_TICKET IS NULL THEN ',
'                 ''N''',
'            ELSE ',
'                 ''V''',
'       END ACCION_TICKET,',
'       CASE WHEN C.ID_TICKET IS NULL THEN ',
'                 '' <img src="#APP_FILES#boleto.png" width="25" height="25"> ''',
'            ELSE ',
'                 '' <img src="#APP_FILES#visual.png" width="25" height="25"> ''',
'       END ICONO ,',
'       ''x'' TICKET,',
'       (select p.valor ',
'          from parametros_generales p',
'         where p.PARAMETRO = ''DERIV_TIPO_TICKET''',
'           and p.cod_modulo = ''PV'')PARAM_TICKET,',
'           C.ID_TICKET,',
'           (SELECT distinct(R.COD_EMPLEADO||'' - ''||P.NOMBRE) ',
'              FROM RH_EMPLEADOS R,',
'                   PERSONAS P ',
'             WHERE R.COD_PERSONA      = P.COD_PERSONA',
'               AND R.COD_EMPRESA      = C.COD_EMPRESA',
'               AND R.COD_SUCURSAL     = C.SUCURSAL_DERIVADA',
'               AND R.COD_AREA         = C.AREA_DERIVADA',
'               AND R.COD_DEPARTAMENTO = C.DPTO_DERIVADO',
'               AND R.COD_EMPLEADO     = C.EMPLEADO_DERIVADO)COLABORADOR_DERIVADO',
'  from CRM_DERIVACIONES_CONTACTO C',
' WHERE C.COD_EMPRESA = :P144_COD_EMPRESA',
'   AND C.ID_CASO     = :P144_COD_CASO',
'   AND C.ID_CONTACTO = :P144_COD_CONTACTO',
'   ORDER BY ',
'   ID_DERIVACION'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Derivaciones'
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
 p_id=>wwv_flow_imp.id(55014748739642812)
,p_name=>'Casos_Seguimiento'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ninguna Derivaci\00F3n.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>55014748739642812
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19663386719545401)
,p_db_column_name=>'ID_DERIVACION'
,p_display_order=>0
,p_column_identifier=>'D'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19662991077545401)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>0
,p_column_identifier=>'C'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19663764242545402)
,p_db_column_name=>'AREA_DERIVADA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Area Derivada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19664100105545402)
,p_db_column_name=>'OPERADOR_REC'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Oper. Retorno'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19664517992545402)
,p_db_column_name=>'FECHA_REC'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Fecha Retorno'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19664918964545402)
,p_db_column_name=>'OBS_REC'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Obs. Retornada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19665343231545403)
,p_db_column_name=>'OPER_DERIV'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Oper. Emisor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19665772257545403)
,p_db_column_name=>'FECHA_DERIV'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Fecha Derivada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19666199210545403)
,p_db_column_name=>'OBS_DERIVADA'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Obs Derivada'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19666522414545403)
,p_db_column_name=>'ESTADO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_static_id=>'ESTADO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19662175044545401)
,p_db_column_name=>'ID_CONTACTO'
,p_display_order=>33
,p_column_identifier=>'O'
,p_column_label=>'Id Contacto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19662589837545401)
,p_db_column_name=>'ID_DERIVACION_PADRE'
,p_display_order=>43
,p_column_identifier=>'P'
,p_column_label=>'Id Derivacion Padre'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19666919836545403)
,p_db_column_name=>'COD_AREA_DERIV'
,p_display_order=>53
,p_column_identifier=>'R'
,p_column_label=>'Cod Area Deriv'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19667349801545404)
,p_db_column_name=>'LINK_PRUEBA'
,p_display_order=>63
,p_column_identifier=>'S'
,p_column_label=>'Detalles'
,p_column_link=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.::P145_ROWID,P145_BLOQUEADO:#ROWID#,#BLOQUEAR#'
,p_column_linktext=>'<img src="#APP_FILES#evaluacion.png" width="25" height="25">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19667797598545404)
,p_db_column_name=>'BLOQUEAR'
,p_display_order=>83
,p_column_identifier=>'U'
,p_column_label=>'Bloquear'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19668183411545404)
,p_db_column_name=>'ROWID'
,p_display_order=>93
,p_column_identifier=>'V'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19668561174545404)
,p_db_column_name=>'ID_CASO'
,p_display_order=>103
,p_column_identifier=>'W'
,p_column_label=>'Id Caso'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22874494530981532)
,p_db_column_name=>'DPTO_DERIVADO'
,p_display_order=>113
,p_column_identifier=>'X'
,p_column_label=>'Dpto Derivado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123958004447528314)
,p_db_column_name=>'ACCION_TICKET'
,p_display_order=>123
,p_column_identifier=>'Y'
,p_column_label=>'Accion Ticket'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123958182142528315)
,p_db_column_name=>'ICONO'
,p_display_order=>133
,p_column_identifier=>'Z'
,p_column_label=>'Icono'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(123958265498528316)
,p_db_column_name=>'TICKET'
,p_display_order=>143
,p_column_identifier=>'AA'
,p_column_label=>'Ticket'
,p_column_link=>'f?p=&APP_ID.:442:&SESSION.:DERIV:&DEBUG.::P442_ACCION_DER,P442_P_TIPO_TKT,P442_P_ID_TICKET,P442_CASO,P442_CONTACTO,P442_ID_DERIVACION:#ACCION_TICKET#,#PARAM_TICKET#,#ID_TICKET#,#ID_CASO#,#ID_CONTACTO#,#ID_DERIVACION#'
,p_column_linktext=>'#ICONO#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129099485466845224)
,p_db_column_name=>'PARAM_TICKET'
,p_display_order=>153
,p_column_identifier=>'AB'
,p_column_label=>'Param Ticket'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129099709666845227)
,p_db_column_name=>'ID_TICKET'
,p_display_order=>163
,p_column_identifier=>'AC'
,p_column_label=>'Id Ticket'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129100049516845230)
,p_db_column_name=>'COLABORADOR_DERIVADO'
,p_display_order=>173
,p_column_identifier=>'AD'
,p_column_label=>'Colaborador Derivado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(55023750588705869)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'158575'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OPER_DERIV:FECHA_DERIV:AREA_DERIVADA:DPTO_DERIVADO:COLABORADOR_DERIVADO:OBS_DERIVADA:ESTADO:LINK_PRUEBA:TICKET:'
,p_break_on=>'ID_CASO'
,p_break_enabled_on=>'ID_CASO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(132496062597578765)
,p_report_id=>wwv_flow_imp.id(55023750588705869)
,p_name=>'Culminado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'CERRADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''CERRADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(132496458283578765)
,p_report_id=>wwv_flow_imp.id(55023750588705869)
,p_name=>'Derivado'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'DERIVADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''DERIVADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(132496882393578765)
,p_report_id=>wwv_flow_imp.id(55023750588705869)
,p_name=>'Pendiente'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'EN PROCESO '
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''EN PROCESO ''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fff5ce'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21758154731052317)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21759772459052333)
,p_button_name=>'CERRAR'
,p_button_static_id=>'CERRAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19670463079545406)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(55014618591642812)
,p_button_name=>'CREAR'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Derivacion'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.::P145_COD_EMPRESA,P145_ID_CASO,P145_ID_CONTACTO,P145_BLOQUEADO:&P144_COD_EMPRESA.,&P144_COD_CASO.,&P144_COD_CONTACTO.,S'
,p_icon_css_classes=>'fa-tree-org'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19660613214545399)
,p_name=>'P144_COD_CONTACTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54708390925007773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19661031236545399)
,p_name=>'P144_COD_CASO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54708390925007773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19661419412545400)
,p_name=>'P144_COD_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54708390925007773)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19673472715545409)
,p_name=>'Cerrar Recuadro de Dialogo'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(55014618591642812)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19673945544545409)
,p_event_id=>wwv_flow_imp.id(19673472715545409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(55014618591642812)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21759862512052334)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CERRAR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CERRAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
