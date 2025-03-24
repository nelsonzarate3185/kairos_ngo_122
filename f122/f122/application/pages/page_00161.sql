prompt --application/pages/page_00161
begin
--   Manifest
--     PAGE: 00161
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
 p_id=>161
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'GRILLA_SNC'
,p_alias=>'GRILLA-SNC'
,p_step_title=>'GRILLA_SNC'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    #reg_parametros{',
'            background-color: #003a85 !important;',
'            box-shadow: black 1px 1px 5px 1px;',
'            }',
' .a-IRR-header {',
'    background: #003a85 !important;',
'    background-color: #003a85 !important;',
'      }',
' ',
'.a-IRR-headerLink {',
'	color: #FFED00 !important; ',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20221101150123'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(294739799401147387)
,p_plug_name=>'Solicitud No Conforme'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*rule*/c.nro_solicitud,',
'       C.FEC_SOLICITUD,',
'       c.estado,',
'       c.tip_comprobante_ref TIP_REF, ',
'       c.ser_comprobante_ref SER_REF,',
'       c.nro_comprobante_ref NRO_REF,',
'       C.COD_CLIENTE||''-''||trim(nvl(pe.nombre,pe.nomb_fantasia))cliente,',
'       decode(c.operacion,''CMB'',''CAMBIO'',''NOT.CRED.'')OPERACION',
'       ,DEPARTAMENTO ',
'       ,to_char(FECHA_AUTORIZA,''dd/mm/yyyy'')FECHA_AUTORIZA',
'       ,c.autoriza_user Autorizado_por',
'       /*,(SELECT LISTAGG(cc.ser_comprobante||''-''||cc.nro_comprobante, '', '') WITHIN GROUP (ORDER BY cc.nro_comprobante)',
'         FROM VT_COMPROBANTES_CABECERA Cc',
'					WHERE cC.COD_EMPRESA=''1''',
'					AND  cC.TIP_COMPROBANTE= ''NCR''',
'					AND  cC.ESTADO<>''A''',
'					AND  cC.TIP_OT=''SNC''  ',
'					AND  cC.SER_OT=c.SER_SOLICITUD ',
'					AND  cC.NRO_OT=c.NRO_SOLICITUD )NCR, */',
'          ,( select DESCRIPCION ',
'            from problemas_conformidad pp',
'            WHERE pp.COD_motivo=c.COD_motivo',
'            AND pp.COD_EMPRESA=c.cod_empresa )Motivo,',
'          c.COD_SUC_ENT suc_ent,',
'          c.COD_SUC_sal suc_sal',
'from ca_conformidad c,',
'     cc_clientes cl,',
'     personas pe',
'where c.cod_empresa=''1'' ',
'and   c.cod_cliente=cl.cod_cliente',
'and   c.cod_empresa=cl.cod_empresa',
'and   cl.cod_persona=pe.cod_persona',
'and   (:P161_FECHA_INI is null or to_date(:P161_FECHA_INI,''dd/mm/yyyy'') <=c.fec_solicitud)',
'and   (:P161_FECHA_fIN is null or to_date(:P161_FECHA_fIN,''dd/mm/yyyy'') >=c.fec_solicitud)',
'and   (:P161_COD_CLIENTE is null or :P161_COD_CLIENTE=c.COD_CLIENTE)',
'and   (:P161_ESTADO is null or :P161_ESTADO=c.ESTADO)',
'and   (:P161_OPERACION is null or :P161_OPERACION=c.OPERACION)',
'and   (:P161_DEPARTAMENTO is null or :P161_DEPARTAMENTO=c.DEPARTAMENTO)',
'and   (:P161_SUC_ENT is null or :P161_SUC_ENT=c.COD_SUC_ENT)',
' order by  C.FEC_SOLICITUD desc, c.nro_solicitud DESC',
';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P161_FECHA_INI,P161_FECHA_FIN,P161_COD_CLIENTE,P161_ESTADO,P161_OPERACION,P161_DEPARTAMENTO,P161_SUC_ENT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Solicitud No Conforme'
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
 p_id=>wwv_flow_imp.id(294741840147147407)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>294741840147147407
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30343474070855916)
,p_db_column_name=>'NRO_SOLICITUD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA Solicitud')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30343893924855917)
,p_db_column_name=>'FEC_SOLICITUD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha Solicitud'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30344278216855917)
,p_db_column_name=>'ESTADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30344636273855917)
,p_db_column_name=>'CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30345040748855917)
,p_db_column_name=>'OPERACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Operacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30345415310855917)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30345803290855918)
,p_db_column_name=>'FECHA_AUTORIZA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha Autoriza'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30346224685855918)
,p_db_column_name=>'AUTORIZADO_POR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Autorizado Por'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30346659073855918)
,p_db_column_name=>'MOTIVO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30347002973855918)
,p_db_column_name=>'SUC_ENT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Suc Ent'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30347450860855918)
,p_db_column_name=>'SUC_SAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Suc Sal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30347895338855918)
,p_db_column_name=>'TIP_REF'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tipo Ref.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30348247069855919)
,p_db_column_name=>'SER_REF'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ser.Ref.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30348655268855919)
,p_db_column_name=>'NRO_REF'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Nro.Ref.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(295145124356869614)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2378783'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_SOLICITUD:FEC_SOLICITUD:ESTADO:CLIENTE:OPERACION:DEPARTAMENTO:FECHA_AUTORIZA:AUTORIZADO_POR:MOTIVO:SUC_ENT:SUC_SAL:TIP_REF:SER_REF:NRO_REF'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(294741202585147401)
,p_plug_name=>'Parametros'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30349607621855920)
,p_name=>'P161_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(294741202585147401)
,p_prompt=>'Fecha desde:'
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
 p_id=>wwv_flow_imp.id(30350063815855920)
,p_name=>'P161_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(294741202585147401)
,p_prompt=>'Fecha Hasta:'
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
 p_id=>wwv_flow_imp.id(30350461252855920)
,p_name=>'P161_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(294741202585147401)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30350896700855920)
,p_name=>'P161_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(294741202585147401)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30351283626855920)
,p_name=>'P161_OPERACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(294741202585147401)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30351614869855921)
,p_name=>'P161_DEPARTAMENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(294741202585147401)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30352057462855921)
,p_name=>'P161_SUC_ENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(294741202585147401)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30352409636855921)
,p_name=>'da_fi_rr'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_FECHA_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30352900116855921)
,p_event_id=>wwv_flow_imp.id(30352409636855921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294739799401147387)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30353314146855921)
,p_name=>'da_ff_rr'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P161_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30353859118855922)
,p_event_id=>wwv_flow_imp.id(30353314146855921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294739799401147387)
);
wwv_flow_imp.component_end;
end;
/
