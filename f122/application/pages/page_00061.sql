prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'OTs Solicitadas'
,p_alias=>'OTS-SOLICITADAS'
,p_step_title=>'OTs Solicitadas'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<meta http-equiv="refresh" content="60" >'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'} ',
'.t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
' ',
' ',
'',
'  .tabla_color   td.t-Report-cell   {',
'  color: yellow  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #003a85  !important;',
'  color: yellow  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #003a85  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink, .a-IRR-header--group, .a-IRR-headerLabel{',
'    background-color: #003a85  !important;',
'	  color: yellow !important;    }',
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
'',
'.chip {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05);',
'}',
'',
'.ot_verde {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    background: #00592e;',
'    color: #cdffe0;',
'}',
'',
'.ot_rojo {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.ot_amarillo {',
'    background: black;',
'    color: yellow;',
'}',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250211073640'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(386106358157962073)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(387052730982151005)
,p_plug_name=>'Ordenes de trabajo'
,p_region_name=>'GRILLA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  cc.ser_comprobante,',
'      ----  ''<span class="''||inv.fnc_estado_solicitud_ot(cc.ser_comprobante,cc.nro_comprobante)||''">''||cc.nro_comprobante ||''</span> ''nro_comprobante,         ',
'      cc.nro_comprobante  nro_comprobante,',
'        A.DESCRIPCION, ',
'        inv.fnc_posicion_ot(cc.cod_empresa, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante) POSICION ,',
'        O.GARANTIA_OT, ',
'        CC.COD_USUARIO_PED,',
'        CC.FEC_ALTA, ',
'        CC.HORA_ALTA,',
'        /*CASE WHEN NVL(O.IND_SNC,''N'') = ''S'' THEN ',
'           ''SNC''',
'        ELSE */',
'          CASE WHEN CC.tipo=''E'' AND CC.COD_GRUPO in (''TECNIC'',''TCNPV'') THEN',
'           ''ENTREGA TECNICO''',
'          ELSE ',
'            CASE WHEN CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN ',
'              ''SOLICITUD TECNICO''',
'            ELSE ',
'             CASE WHEN CC.tipo=''E'' THEN ',
'               ''INGRESO SALON''',
'             ELSE ',
'               ''SOLICITUD CAJA''',
'             END',
'            END ',
'         --END ',
'        END TIPO_DESC , ',
'        E.NOMBRE PROVEEDOR, ',
'        cc.id_solicitud ,',
'        p.cod_proveedor, ',
'        decode (ORIGEN, ''T'', ''TALLER'', ''R'',''RECEPCION'',''I'',''INGRESO'',''SIN ORIGEN'') ORIGEN, ',
'        CC.tipo',
'         ,inv.fnc_estado_solicitud_ot(cc.ser_comprobante,cc.nro_comprobante) atributo,',
'         NVL((select eo.descripcion',
'                from ca_estado_ot eo',
'                where eo.cod_empresa= O.COD_EMPRESA',
'                and   eo.cod_estado= O.ESTADO_PRESU',
'                AND ROWNUM=1',
'                ),'''') ESTADO_OT',
'from CA_SOLICITUD_OT cc, ST_ARTICULOS A, VT_ORDENES_TRABAJO O, CM_PROVEEDORES P, PERSONAS E',
'--where CC.cod_empresa = ''1''',
'where CC.cod_empresa = :P_COD_EMPRESA',
'AND NVL(CC.ESTADO,''N'')=''P''                    ',
'AND (ORIGEN= :P61_ORIGENES OR :P61_ORIGENES IS NULL OR  :P61_ORIGENES  = ''TD'')',
'AND A.COD_EMPRESA= CC.COD_EMPRESA',
'AND A.COD_ARTICULO = o.cod_articulo',
'AND O.COD_EMPRESA = CC.COD_EMPRESA',
'AND O.TIP_COMPROBANTE= CC.TIP_COMPROBANTE',
'AND O.SER_COMPROBANTE = CC.SER_COMPROBANTE ',
'AND O.NRO_COMPROBANTE = CC.NRO_COMPROBANTE ',
'AND P.COD_EMPRESA = CC.COD_EMPRESA',
'AND P.COD_PROVEEDOR = O.COD_PROVEEDOR',
'AND P.COD_PERSONA = E.COD_PERSONA',
'AND (O.cod_proveedor=:P61_TECNICOS or :P61_TECNICOS=''T'')',
'AND NVL(O.ANULADO,''N'')<>''S''',
'AND nvl(nvl(O.ind_entrega,''N''),NVL(O.IND_RETIRADO,''N''))<>''S''',
'AND (:P61_VER_SNC= ''T'' OR (:P61_VER_SNC = ''S'' AND NVL(O.IND_SNC,''N'') =''S'' ) OR (:P61_VER_SNC = ''N'' AND NVL(O.IND_SNC,''N'') =''N'' ))',
'AND ((nvl(:P61_CHK_TKT,''N'')=''N'' AND COD_USUARIO_PED <>''TICKETS'') OR nvl(:P61_CHK_TKT,''N'')=''S'')',
'AND cc.fec_alta >= trunc(sysdate-10)',
'AND O.cod_origen not in(20)',
'--AND NVL(O.IND_SNC,''N'') =''N''',
'--AND cc.rechazado <> ''S''',
'order by CC.FEC_ALTA asc,TIPO_DESC ,E.NOMBRE'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P61_ORIGENES,P61_CHK_TKT,P61_VER_SNC'
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
 p_id=>wwv_flow_imp.id(387053092834151005)
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
,p_detail_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:CR,63:P63_PARAM_NRO_OT,P63_PARAM_SER_OT,P63_PARAM_ID_SOLICITUD,P63_COD_PROVEEDOR:#NRO_COMPROBANTE#,#SER_COMPROBANTE#,#ID_SOLICITUD#,#COD_PROVEEDOR#'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-search-plus" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'JUANSA'
,p_internal_uid=>387053092834151005
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12814397560539004)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'AH'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12814791366539004)
,p_db_column_name=>'TIPO_DESC'
,p_display_order=>30
,p_column_identifier=>'AJ'
,p_column_label=>'Tipo solicitud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12811563433539002)
,p_db_column_name=>'POSICION'
,p_display_order=>40
,p_column_identifier=>'AB'
,p_column_label=>'Posicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12813901799539004)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>50
,p_column_identifier=>'AG'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12812312152539003)
,p_db_column_name=>'GARANTIA_OT'
,p_display_order=>70
,p_column_identifier=>'V'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12811170418539002)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>80
,p_column_identifier=>'AA'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12812734826539003)
,p_db_column_name=>'COD_USUARIO_PED'
,p_display_order=>90
,p_column_identifier=>'AC'
,p_column_label=>'Cod Usuario Ped'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12813108100539003)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>100
,p_column_identifier=>'AD'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12813524637539003)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>110
,p_column_identifier=>'AE'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12815119235539004)
,p_db_column_name=>'ID_SOLICITUD'
,p_display_order=>120
,p_column_identifier=>'AK'
,p_column_label=>'Id Solicitud'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12815541641539004)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>130
,p_column_identifier=>'AN'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12815924954539005)
,p_db_column_name=>'ORIGEN'
,p_display_order=>140
,p_column_identifier=>'AO'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12816383965539005)
,p_db_column_name=>'TIPO'
,p_display_order=>150
,p_column_identifier=>'AP'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(183084687165712023)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>160
,p_column_identifier=>'AS'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(642182702213635246)
,p_db_column_name=>'ESTADO_OT'
,p_display_order=>170
,p_column_identifier=>'AU'
,p_column_label=>'Estado OT'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1046715021859067601)
,p_db_column_name=>'ATRIBUTO'
,p_display_order=>180
,p_column_identifier=>'AV'
,p_column_label=>'Atributo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(387062828517152750)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'1846880'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORIGEN:PROVEEDOR:SER_COMPROBANTE:NRO_COMPROBANTE:ESTADO_OT:POSICION:TIPO_DESC'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
,p_count_columns_on_break=>'NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(792578658923792463)
,p_report_id=>wwv_flow_imp.id(387062828517152750)
,p_name=>'AMARILLO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ATRIBUTO'
,p_operator=>'='
,p_expr=>'AMARILLO'
,p_condition_sql=>' (case when ("ATRIBUTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''AMARILLO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fff5ce'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(792579076420792464)
,p_report_id=>wwv_flow_imp.id(387062828517152750)
,p_name=>'ROJO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ATRIBUTO'
,p_operator=>'='
,p_expr=>'ROJO'
,p_condition_sql=>' (case when ("ATRIBUTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''ROJO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(792579453779792464)
,p_report_id=>wwv_flow_imp.id(387062828517152750)
,p_name=>'VERDE'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ATRIBUTO'
,p_operator=>'='
,p_expr=>'VERDE'
,p_condition_sql=>' (case when ("ATRIBUTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''VERDE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
,p_row_font_color=>'#000000'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12807688836539000)
,p_name=>'P61_PROVEEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(386106358157962073)
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
 p_id=>wwv_flow_imp.id(12808039580539000)
,p_name=>'P61_ORIGENES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(386106358157962073)
,p_prompt=>'Origenes'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ORIGENES_OTS_SOL'
,p_lov=>'.'||wwv_flow_imp.id(12823326561539009)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
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
 p_id=>wwv_flow_imp.id(12808489530539000)
,p_name=>'P61_VER_SNC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(386106358157962073)
,p_item_default=>'T'
,p_prompt=>'Ver Snc'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Ver Todo;T,Ver Solo SNC;S,Excluir SNC;N'
,p_cHeight=>1
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12808856673539000)
,p_name=>'P61_TECNICOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(386106358157962073)
,p_prompt=>'Tecnicos'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TECNICOS_OT_SOL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PROVEEDOR ,NOMB_PROVEEDOR nombre,1 ORDEN',
'from cm_proveedores a',
'where cod_empresa= :P_COD_EMPRESA',
'and a.ind_servicio_tecnico=''STNGO''',
'AND ESTADO=''A''',
'AND A.CANTIDAD_OTS>0',
' ',
'',
' union all',
' SELECT ''T'' codigo_rapido,''TODOS'' nombre,2',
'FROM dual',
'ORDER BY 3 desc, 2 asc',
'',
' ',
'',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="background-color:#ebfaff ; border-color:  #7fb2c2"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12809297208539001)
,p_name=>'P61_CHK_TKT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(386106358157962073)
,p_prompt=>'Incluir Tickets'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12809606169539001)
,p_name=>'P61_USER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(386106358157962073)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12810037155539001)
,p_name=>'P61_SER_OT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(386106358157962073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12810498824539001)
,p_name=>'P61_NRO_OT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(386106358157962073)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12817046252539006)
,p_name=>'CLIC_CL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_ORIGENES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12817510673539006)
,p_event_id=>wwv_flow_imp.id(12817046252539006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12817906781539006)
,p_name=>'CLIC_CL2'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_TECNICOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12818410505539006)
,p_event_id=>wwv_flow_imp.id(12817906781539006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12818893898539007)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(387052730982151005)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12819394529539007)
,p_event_id=>wwv_flow_imp.id(12818893898539007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12819732345539007)
,p_name=>'REFRESH'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(387052730982151005)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12820208980539007)
,p_event_id=>wwv_flow_imp.id(12819732345539007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(387052730982151005)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12820686335539007)
,p_name=>'REFRESH'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(387052730982151005)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12821146810539008)
,p_event_id=>wwv_flow_imp.id(12820686335539007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(387052730982151005)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12821508371539008)
,p_name=>'New_1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_VER_SNC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12822060921539008)
,p_event_id=>wwv_flow_imp.id(12821508371539008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12822492984539008)
,p_name=>'New_2'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_CHK_TKT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12822963822539008)
,p_event_id=>wwv_flow_imp.id(12822492984539008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(183084149092712018)
,p_name=>'da_aft_ref'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(387052730982151005)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(183084285828712019)
,p_event_id=>wwv_flow_imp.id(183084149092712018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'estado_css;'
);
wwv_flow_imp.component_end;
end;
/
