prompt --application/pages/page_00516
begin
--   Manifest
--     PAGE: 00516
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
 p_id=>516
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cabecera de Mantenimiento de Entrada/Salida de Articulos - STENTSAL'
,p_alias=>'CABECERA-DE-MANTENIMIENTO-DE-ENTRADA-SALIDA-DE-ARTICULOS-STENTSAL'
,p_step_title=>'Cabecera de Mantenimiento de Entrada/Salida de Articulos - STENTSAL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230508161840'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154419911894030549)
,p_plug_name=>'Cabecera de Mantenimiento de Entrada/Salida de Articulos - STENTSAL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(154420067584030550)
,p_plug_name=>'ST_ENTSAL_CAB'
,p_parent_plug_id=>wwv_flow_imp.id(154419911894030549)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ST.COD_EMPRESA,',
'       ST.COD_SUCURSAL,',
'       ST.NUM_ENT_SAL,',
'       ST.FEC_ENT_SAL,',
'       ST.COD_MOTIVO_ENT_SAL,',
'       (SELECT DESCRIPCION ',
'          FROM ST_MOTIVO_ENT_SAL ',
'         WHERE COD_MOTIVO_ENT_SAL = ST.COD_MOTIVO_ENT_SAL) DESC_MOTIVO,',
'       ST.COD_MONEDA,',
'       (SELECT DESCRIPCION ',
'          FROM MONEDAS',
'         WHERE COD_MONEDA = ST.COD_MONEDA) DESC_MONEDA,',
'       ST.SER_ENT_SAL,',
'       ST.TIP_ENT_SAL,',
'       ST.COSTO_TOTAL_DESPACHO,',
'       ST.FEC_ALTA,',
'       ST.COD_PROVEEDOR,',
'       ST.OBSERVACION,',
'       ST.TIP_COMPROBANTE_REF,',
'       ST.SER_COMPROBANTE_REF,',
'       ST.NRO_COMPROBANTE_REF,',
'       ST.TIP_CAMBIO_US,',
'       ST.HORA_ALTA,',
'       ST.COD_USUARIO,',
'       ST.COD_POTRERO,',
'       ST.COD_ESTABLE,',
'       ST.COD_CLIENTE,',
'       ST.COD_VENDEDOR,',
'       ST.TIPO,',
'       ST.IND_WEB,',
'       ST.COD_MOTIVO_DEV,',
'       ST.ROWID ROW_ID,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM ST_ENTSAL_CAB ST',
' WHERE COD_EMPRESA = :P_COD_EMPRESA',
'ORDER BY FEC_ENT_SAL DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ST_ENTSAL_CAB'
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
 p_id=>wwv_flow_imp.id(154865764967412801)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>154865764967412801
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154865864501412802)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154865903807412803)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154866098822412804)
,p_db_column_name=>'NUM_ENT_SAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154866193436412805)
,p_db_column_name=>'FEC_ENT_SAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154866210023412806)
,p_db_column_name=>'COD_MOTIVO_ENT_SAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Motivo Ent Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154866331180412807)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154866486265412808)
,p_db_column_name=>'SER_ENT_SAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154866599647412809)
,p_db_column_name=>'TIP_ENT_SAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154866660403412810)
,p_db_column_name=>'COSTO_TOTAL_DESPACHO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Costo Total Despacho'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154866734974412811)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154866820808412812)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154866938018412813)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154867098473412814)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tipo Comprobante Ref.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154867158333412815)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Serie Comprobante Ref.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154867247940412816)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nro. Comprobante Ref.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154867313371412817)
,p_db_column_name=>'TIP_CAMBIO_US'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Tip Cambio Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154867436950412818)
,p_db_column_name=>'HORA_ALTA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Hora Alta'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154867551997412819)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154867628114412820)
,p_db_column_name=>'COD_POTRERO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Potrero'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154867718451412821)
,p_db_column_name=>'COD_ESTABLE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cod Estable'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154867856618412822)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154867971286412823)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154868069073412824)
,p_db_column_name=>'TIPO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154868136537412825)
,p_db_column_name=>'IND_WEB'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Ind Web'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154868275531412826)
,p_db_column_name=>'COD_MOTIVO_DEV'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Motivo Dev'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154868345696412827)
,p_db_column_name=>'EDITAR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:512:&SESSION.::&DEBUG.:Y,512:P512_ROW_ID_AUX_CAB,P512_CONTROL_ORIGEN:#ROW_ID#,1'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                       ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154868408481412828)
,p_db_column_name=>'BORRAR'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P516_ROW_ID_AUX_DELETE'',''#ROW_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;  ',
'    ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154868572672412829)
,p_db_column_name=>'DESC_MOTIVO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154868616088412830)
,p_db_column_name=>'DESC_MONEDA'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154868784799412831)
,p_db_column_name=>'ROW_ID'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Row Id'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(154921802507648292)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1549219'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TIP_ENT_SAL:SER_ENT_SAL:NUM_ENT_SAL:FEC_ENT_SAL:DESC_MOTIVO:DESC_MONEDA:COSTO_TOTAL_DESPACHO:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:COD_USUARIO:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(154869284228412836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(154419911894030549)
,p_button_name=>'BTNUEVO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo Mantenimiento'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:512:&SESSION.::&DEBUG.:512:P512_CONTROL_ORIGEN:0'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(154868850909412832)
,p_name=>'P516_ROW_ID_AUX_DELETE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(154420067584030550)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159634944183238019)
,p_name=>'P516_TIP_ENT_SAL_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(154420067584030550)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159635074411238020)
,p_name=>'P516_SER_ENT_SAL_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(154420067584030550)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159635151868238021)
,p_name=>'P516_NUM_ENT_SAL_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(154420067584030550)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(159634610958238016)
,p_name=>'DA_ROW_ID_AUX_DELETE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P516_ROW_ID_AUX_DELETE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159634718459238017)
,p_event_id=>wwv_flow_imp.id(159634610958238016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P516_ROW_ID_AUX_DELETE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159635251079238022)
,p_event_id=>wwv_flow_imp.id(159634610958238016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BEGIN',
'        SELECT TIP_ENT_SAL,',
'               SER_ENT_SAL,',
'               NUM_ENT_SAL',
'          INTO :P516_TIP_ENT_SAL_AUX,',
'               :P516_SER_ENT_SAL_AUX,',
'               :P516_NUM_ENT_SAL_AUX',
'          FROM ST_ENTSAL_CAB',
'         WHERE ROWID = :P516_ROW_ID_AUX_DELETE;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'        :P516_TIP_ENT_SAL_AUX := NULL;',
'        :P516_SER_ENT_SAL_AUX := NULL;',
'        :P516_NUM_ENT_SAL_AUX := NULL;',
'    END;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ROW_ID_AUX_DELETE ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P516_ROW_ID_AUX_DELETE'
,p_attribute_03=>'P516_TIP_ENT_SAL_AUX,P516_SER_ENT_SAL_AUX,P516_NUM_ENT_SAL_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P516_ROW_ID_AUX_DELETE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159634800436238018)
,p_event_id=>wwv_flow_imp.id(159634610958238016)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro que desea eliminar el registro &P516_TIP_ENT_SAL_AUX. - &P516_SER_ENT_SAL_AUX. - &P516_NUM_ENT_SAL_AUX. ?')
,p_attribute_02=>'Aviso'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P516_ROW_ID_AUX_DELETE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159635453170238024)
,p_event_id=>wwv_flow_imp.id(159634610958238016)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STENTSAL.DELETE_CAB(prow_id => :P516_ROW_ID_AUX_DELETE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''DA_ROW_ID_AUX_DELETE DELETE_CAB ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P516_ROW_ID_AUX_DELETE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(159635383288238023)
,p_event_id=>wwv_flow_imp.id(159634610958238016)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(154420067584030550)
);
wwv_flow_imp.component_end;
end;
/
