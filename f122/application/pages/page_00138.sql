prompt --application/pages/page_00138
begin
--   Manifest
--     PAGE: 00138
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
 p_id=>138
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'GRILLA_VENTAS'
,p_alias=>'GRILLA-VENTAS'
,p_step_title=>'GRILLA_VENTAS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-header {',
'    background: #003a85 !important;',
'    background-color: #003a85 !important;',
'      }',
' ',
'.a-IRR-headerLink {',
'	color: #FFED00 !important; ',
'}',
'',
'',
'    #reg_parametros{',
'            background-color: #003a85 !important;',
'            box-shadow: black 1px 1px 5px 1px;',
'            }',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20221101150202'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295107860351292522)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295108002171292523)
,p_plug_name=>'Ventas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.fec_comprobante fecha,',
'       c.tip_comprobante tip,',
'       c.ser_comprobante ser,',
'       c.nro_comprobante nro,',
'       c.tot_comprobante, ',
'       T.DESCRIPCION condicion,',
'       c.ser_comprobante_ref||''-''||c.nro_comprobante_ref Pedido,',
'       c.cod_cliente,',
'       c.nom_cliente,',
'       P.NOMBRE VENDEDOR,',
'       c.Cod_Lista_Precio LISTPRE,',
'       decode(C.COD_MONEDA,''1'',''Gs'',''U$'') MON,',
'       C.COD_SUCURSAL SUC,',
'       C.COD_SECTOR SECT',
'from vt_comprobantes_cabecera c,',
'     cc_condiciones_ventas t,',
'     FV_VENDEDORES V,',
'     PERSONAS P     ',
'where c.cod_empresa=''1'' ',
'and   nvl(c.estado,''N'')<>''A''',
'and   c.tip_comprobante <>''NCR''',
'and   c.cod_condicion_venta=t.cod_condicion_venta',
'and   c.cod_empresa=t.cod_empresa',
'AND   C.COD_VENDEDOR=V.COD_VENDEDOR',
'AND   C.COD_EMPRESA=V.COD_EMPRESA',
'AND   V.COD_PERSONA=P.COD_PERSONA',
'AND   (:P138_COD_CLIENTE IS NULL OR :P138_COD_CLIENTE=C.COD_CLIENTE)',
'AND   (:P138_FECHA_INI IS NULL OR to_date(:P138_FECHA_INI,''dd/mm/yyyy'')<= C.fec_comprobante)',
'AND   (:P138_FECHA_FIN IS NULL OR to_date(:P138_FECHA_FIN,''dd/mm/yyyy'')>= C.fec_comprobante)',
'order by fec_comprobante desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P138_COD_CLIENTE,P138_FECHA_INI,P138_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ventas'
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
 p_id=>wwv_flow_imp.id(295108059226292524)
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
,p_internal_uid=>295108059226292524
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30276558144728746)
,p_db_column_name=>'FECHA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30276993869728747)
,p_db_column_name=>'TIP'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30277325030728747)
,p_db_column_name=>'SER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30277747052728747)
,p_db_column_name=>'NRO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Numero'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30278126216728747)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30278516727728747)
,p_db_column_name=>'CONDICION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Condicion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30278950816728748)
,p_db_column_name=>'PEDIDO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30279374393728748)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30279765499728748)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30280160971728748)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30280585700728748)
,p_db_column_name=>'LISTPRE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Lista Prec.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30280983543728748)
,p_db_column_name=>'MON'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Mon'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30281308415728749)
,p_db_column_name=>'SUC'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Suc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30281772349728749)
,p_db_column_name=>'SECT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Sector'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(295152271453374169)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2379538'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:TIP:SER:NRO:TOT_COMPROBANTE:CONDICION:PEDIDO:COD_CLIENTE:NOM_CLIENTE:VENDEDOR:LISTPRE:MON:SUC:SECT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30275041770728745)
,p_name=>'P138_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(295107860351292522)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30275436149728745)
,p_name=>'P138_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(295107860351292522)
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
 p_id=>wwv_flow_imp.id(30275834015728746)
,p_name=>'P138_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(295107860351292522)
,p_prompt=>'Fecha hasta:'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30282474477728750)
,p_name=>'da_fi_rr'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_FECHA_INI'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30282970154728750)
,p_event_id=>wwv_flow_imp.id(30282474477728750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295108002171292523)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30283325484728750)
,p_name=>'da_ff_rr'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30283876507728750)
,p_event_id=>wwv_flow_imp.id(30283325484728750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295108002171292523)
);
wwv_flow_imp.component_end;
end;
/
