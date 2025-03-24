prompt --application/pages/page_00482
begin
--   Manifest
--     PAGE: 00482
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
 p_id=>482
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Control de Pedidos de Repuestos - CAREPPED'
,p_alias=>'CAREPPED'
,p_step_title=>'Control de Pedidos de Repuestos - CAREPPED'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
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
'  .a-IRR-headerLink{',
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
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20241025140235'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144479988268783511)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144480059958783512)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_imp.id(144479988268783511)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144480487834783516)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(144479988268783511)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'        C002 COD_SUCURSAL,',
'        C003 TIP_COMPROBANTE,',
'        C004 SER_COMPROBANTE,',
'        C005 V_NRO_COMPROBANTE,',
'        C006 FEC_COMPROBANTE,',
'        C007 V_OBSERVACION,',
'        C008 COD_USUARIO,',
'        C009 FACTURADO,',
'        C010 ANULADO,',
'        C011 V_NRO_COMPROBANTE_REF,',
'        C012 SER_COMPROBANTE_REF,',
'        C013 COD_PROVEEDOR,',
'        C014 COD_SUCURSAL_ENV,',
'        C015 FEC_CONFIMACION,',
'        C016 HORA_CONFIRMACION,',
'        C017 V_ESTADO_P,',
'        C018 V_TECNICO, ',
'        C019 PENDIENTE_OT,',
'        C020 DEPOSITO,',
'        C021 R_ID,',
'        NULL DETALLE',
'       -- NULL EDITAR,',
'        --NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_CAREPPED''',
'AND :P482_AUX = 1',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P482_AUX'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(144480672287783518)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No hay registros.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>144480672287783518
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144481288020783524)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144664450789406828)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>300
,p_column_identifier=>'AL'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144664578276406829)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>310
,p_column_identifier=>'AM'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144664786916406831)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>330
,p_column_identifier=>'AO'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144664898217406832)
,p_db_column_name=>'FACTURADO'
,p_display_order=>340
,p_column_identifier=>'AP'
,p_column_label=>'Facturado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144664933192406833)
,p_db_column_name=>'ANULADO'
,p_display_order=>350
,p_column_identifier=>'AQ'
,p_column_label=>'Anulado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144665087944406834)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>360
,p_column_identifier=>'AR'
,p_column_label=>'Ser Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144665142029406835)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>370
,p_column_identifier=>'AS'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144665215219406836)
,p_db_column_name=>'COD_SUCURSAL_ENV'
,p_display_order=>380
,p_column_identifier=>'AT'
,p_column_label=>'Cod Sucursal Env'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144665402576406838)
,p_db_column_name=>'HORA_CONFIRMACION'
,p_display_order=>400
,p_column_identifier=>'AV'
,p_column_label=>'Hora Confirmacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144666516999406849)
,p_db_column_name=>'V_NRO_COMPROBANTE'
,p_display_order=>420
,p_column_identifier=>'BG'
,p_column_label=>unistr('N\00FAmero ')
,p_column_link=>'f?p=&APP_ID.:326:&SESSION.::&DEBUG.:Y:P326_NRO_COMPROBANTE,P326_SER_COMPROBANTE:#V_NRO_COMPROBANTE#,#SER_COMPROBANTE#'
,p_column_linktext=>'#V_NRO_COMPROBANTE#'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144666697797406850)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>430
,p_column_identifier=>'BH'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144789256173452101)
,p_db_column_name=>'V_OBSERVACION'
,p_display_order=>440
,p_column_identifier=>'BI'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144789328118452102)
,p_db_column_name=>'V_NRO_COMPROBANTE_REF'
,p_display_order=>450
,p_column_identifier=>'BJ'
,p_column_label=>'OT'
,p_column_link=>'f?p=&APP_ID.:588:&SESSION.::&DEBUG.:588:P588_NRO_COMPROBANTE,P588_SER_COMPROBANTE:#V_NRO_COMPROBANTE_REF#,#SER_COMPROBANTE#'
,p_column_linktext=>'#V_NRO_COMPROBANTE_REF#'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144789421792452103)
,p_db_column_name=>'FEC_CONFIMACION'
,p_display_order=>460
,p_column_identifier=>'BK'
,p_column_label=>'Fec Confimacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144789520288452104)
,p_db_column_name=>'V_ESTADO_P'
,p_display_order=>470
,p_column_identifier=>'BL'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144789651242452105)
,p_db_column_name=>'V_TECNICO'
,p_display_order=>480
,p_column_identifier=>'BM'
,p_column_label=>unistr('T\00E9cnico')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144789773916452106)
,p_db_column_name=>'PENDIENTE_OT'
,p_display_order=>490
,p_column_identifier=>'BN'
,p_column_label=>'Pendiente Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144789840092452107)
,p_db_column_name=>'DEPOSITO'
,p_display_order=>500
,p_column_identifier=>'BO'
,p_column_label=>'Deposito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144789943418452108)
,p_db_column_name=>'R_ID'
,p_display_order=>510
,p_column_identifier=>'BP'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(145092642545671401)
,p_db_column_name=>'DETALLE'
,p_display_order=>520
,p_column_identifier=>'BS'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P482_DETALLE'',''#R_ID#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(169928288246882116)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>530
,p_column_identifier=>'BT'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(144505887257653476)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1445059'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DETALLE:V_NRO_COMPROBANTE:V_NRO_COMPROBANTE_REF:V_OBSERVACION:V_TECNICO:V_ESTADO_P'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144480518991783517)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(144479988268783511)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144480336545783515)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(144480059958783512)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style="margin-top:15px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144479160719783503)
,p_name=>'P482_COD_USUARIO'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144479288869783504)
,p_name=>'P482_COD_EMPRESA'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144479316390783505)
,p_name=>'P482_NOM_EMPRESA'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144479466060783506)
,p_name=>'P482_COD_SUCURSAL'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144479537538783507)
,p_name=>'P482_NOM_SUCURSAL'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144479660920783508)
,p_name=>'P482_COD_MODULO'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144479735877783509)
,p_name=>'P482_LOGO'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144480137577783513)
,p_name=>'P482_DEPOSITO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144480059958783512)
,p_prompt=>unistr('T\00E9cnico')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DEPOSITO_REPUESTOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SUCURSAL || '' - '' || nombre D,',
'        cod_sucursal R',
'FROM cm_proveedores pro, personas p',
'where cod_empresa = :p_cod_empresa',
'and pro.cod_persona=p.cod_persona',
'and pro.ind_servicio_tecnico=''STNGO'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
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
 p_id=>wwv_flow_imp.id(144480265064783514)
,p_name=>'P482_PENDIENTE_OT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(144480059958783512)
,p_item_default=>'T'
,p_prompt=>'Ver Pendientes de Repuestos'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'N'
,p_attribute_02=>'PE'
,p_attribute_03=>'T'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144482204684783534)
,p_name=>'P482_COD_USUARIO_VIEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(144480518991783517)
,p_prompt=>'Cod Usuario View'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144482393817783535)
,p_name=>'P482_FEC_CONFIRMACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(144480518991783517)
,p_prompt=>unistr('Fecha de Confirmaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144482444160783536)
,p_name=>'P482_HORA_CONFIRMACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(144480518991783517)
,p_prompt=>'Hora'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144483262045783544)
,p_name=>'P482_DETALLE'
,p_item_sequence=>1110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144661933251406803)
,p_name=>'P482_ESTADO_PREPA'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144662023136406804)
,p_name=>'P482_TECNICO'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144662199727406805)
,p_name=>'P482_OBSERVACION'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(169928326910882117)
,p_name=>'P482_AUX'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144483341519783545)
,p_name=>'DA_DETALLE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P482_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144483499850783546)
,p_event_id=>wwv_flow_imp.id(144483341519783545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_USUARIO,',
'           FEC_CONFIMACION,',
'           HORA_CONFIRMACION  ',
'       INTO :P482_COD_USUARIO_VIEW,',
'            :P482_FEC_CONFIRMACION,',
'            :P482_HORA_CONFIRMACION    ',
'    FROM CA_PEDIDO_REPUESTO_CAB',
'    WHERE ROWID = :P482_DETALLE;',
'',
'    --APEX_DEBUG.ERROR(''Fecha ''||:P482_FEC_CONFIRMACION || '' Hora ''||:P482_HORA_CONFIRMACION);',
'',
'',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                    APEX_DEBUG.ERROR(''Error server-code DETALLE ''||SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P482_DETALLE'
,p_attribute_03=>'P482_COD_USUARIO_VIEW,P482_FEC_CONFIRMACION,P482_HORA_CONFIRMACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144483617422783548)
,p_event_id=>wwv_flow_imp.id(144483341519783545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144480518991783517)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144483891741783550)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144480336545783515)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144661867054406802)
,p_event_id=>wwv_flow_imp.id(144483891741783550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  -- IF :P482_DEPOSITO IS NOT NULL',
'   --AND :P482_PENDIENTE_OT IS NOT NULL THEN',
'  --   apex_debug.error(''entro'');',
'     CAREPPED.PR_GENERAR_REPORTE( PI_COD_EMPRESA => :P_COD_EMPRESA ,',
'                                  PI_DEPOSITO => :P482_DEPOSITO,',
'                                  PI_PENDIENTE_OT => :P482_PENDIENTE_OT);',
'     :P482_AUX := 1;',
'                         ',
'  -- END IF;',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN ',
'            raise_application_error(-20000, sqlerrm );',
'END;'))
,p_attribute_02=>'P482_PENDIENTE_OT,P482_DEPOSITO,P482_COD_EMPRESA'
,p_attribute_03=>'P482_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144661778399406801)
,p_event_id=>wwv_flow_imp.id(144483891741783550)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144480487834783516)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144790244888452111)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P482_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144790399170452112)
,p_event_id=>wwv_flow_imp.id(144790244888452111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el siguiente control?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144790455002452113)
,p_event_id=>wwv_flow_imp.id(144790244888452111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE CA_PEDIDO_REPUESTO_CAB',
'    WHERE ROWID = :P482_ELIMINAR;',
'',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error al eliminar ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P482_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144790552460452114)
,p_event_id=>wwv_flow_imp.id(144790244888452111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(144480487834783516)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144790966084452118)
,p_name=>'DA_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P482_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144479002774783502)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P482_COD_USUARIO  := :P_Cod_Usuario;',
':P482_COD_EMPRESA  := NVL(:P_Cod_Empresa,''1'');',
':P482_NOM_EMPRESA  := :P_Nom_Empresa;',
'--:P482_Cod_Sucursal := :P_Cod_Sucursal;',
':P482_NOM_SUCURSAL := :P_Nom_Sucursal;',
':P482_COD_MODULO   := :P_Cod_Modulo;',
'',
'',
':P482_logo := ''Impresion de Pedidos'';',
'',
'',
'',
' '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
