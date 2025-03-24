prompt --application/pages/page_00450
begin
--   Manifest
--     PAGE: 00450
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
 p_id=>450
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CPPECOMV'
,p_alias=>'CPPECOMV'
,p_step_title=>'CPPECOMV'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230323114521'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133079569132155728)
,p_plug_name=>'CPPECOMV'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       TIP_PEDIDO,',
'       NRO_PEDIDO,',
'       COD_SUCURSAL,',
'       FECHA,',
'       COD_PROVEEDOR,',
'       REFERENCIA,',
'       ESTADO,',
'       TOTAL,',
'       COMENTARIO,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       COD_PERSONA,',
'       FEC_COMPRA,',
'       COD_USUARIO,',
'       COD_USUARIO_CONF,',
'       FEC_CONFIRMACION,',
'       NOMBRE,',
'       NRO_REFERENCIA,',
'       COD_CONDICION_COMPRA,',
'       COD_SECCION,',
'       COD_USR_INS,',
'       FEC_HOR_INS,',
'       COD_USR_UPD,',
'       FEC_HOR_UPD,',
'       NRO_PUBLICACION,',
'       IND_ESTADO,',
'       REL_AUTORIZACION,',
'       REL_RECHAZO,',
'       COD_MOTIVO_RECHAZO,',
'       FEC_ENTREGA,',
'       DIREC_ENTREGA',
'  from CP_PEDIDOS_CAB',
'  where cod_empresa  = ''1''',
'  order by NRO_PEDIDO desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'CPPECOMV'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(133079680307155728)
,p_name=>'CPPECOMV'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_base_pk2=>'TIP_PEDIDO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:451:&SESSION.::&DEBUG.:RP,:P451_NRO_PEDIDO,P451_TIP_PEDIDO,P451_COD_EMPRESA,P451_OPERACION:\#NRO_PEDIDO#\,\#TIP_PEDIDO#\,\#COD_EMPRESA#\,MODIFICAR'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>133079680307155728
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133082128500155724)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>0
,p_column_identifier=>'D'
,p_column_label=>'Nro. Pedido'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133081716030155724)
,p_db_column_name=>'TIP_PEDIDO'
,p_display_order=>0
,p_column_identifier=>'C'
,p_column_label=>'Tip Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133081330807155724)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133082448922155724)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(57557475286695231)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133082811662155724)
,p_db_column_name=>'FECHA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133083231756155723)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133083667858155723)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Referencia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133084045846155723)
,p_db_column_name=>'ESTADO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133084477693155723)
,p_db_column_name=>'TOTAL'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133084807079155723)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133085263695155723)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133085696457155722)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133086022268155722)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>unistr('C\00F3d. Persona')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133086402681155722)
,p_db_column_name=>'FEC_COMPRA'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Fec Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133086897810155722)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133087215266155722)
,p_db_column_name=>'COD_USUARIO_CONF'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Cod Usuario Conf'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133087606625155722)
,p_db_column_name=>'FEC_CONFIRMACION'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Fec Confirmacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133088027475155721)
,p_db_column_name=>'NOMBRE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133088460099155721)
,p_db_column_name=>'NRO_REFERENCIA'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Nro. Referencia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133088890047155721)
,p_db_column_name=>'COD_CONDICION_COMPRA'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>unistr('Condici\00F3n Compra')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(134299924621249551)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133089253185155721)
,p_db_column_name=>'COD_SECCION'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Cod Seccion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133089615959155721)
,p_db_column_name=>'COD_USR_INS'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Cod Usr Ins'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133090097841155721)
,p_db_column_name=>'FEC_HOR_INS'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Fec Hor Ins'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133090460405155720)
,p_db_column_name=>'COD_USR_UPD'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Cod Usr Upd'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133090846094155720)
,p_db_column_name=>'FEC_HOR_UPD'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Fec Hor Upd'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133091627628155720)
,p_db_column_name=>'IND_ESTADO'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Ind Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133092077549155720)
,p_db_column_name=>'REL_AUTORIZACION'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Rel Autorizacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133092452941155720)
,p_db_column_name=>'REL_RECHAZO'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Rel Rechazo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133092894276155719)
,p_db_column_name=>'COD_MOTIVO_RECHAZO'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Cod Motivo Rechazo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133093226275155719)
,p_db_column_name=>'FEC_ENTREGA'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Fec Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133093681174155719)
,p_db_column_name=>'DIREC_ENTREGA'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Direc Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(133256761816371719)
,p_db_column_name=>'NRO_PUBLICACION'
,p_display_order=>43
,p_column_identifier=>'AH'
,p_column_label=>'Nro Publicacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(133095936264155190)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1330960'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'NRO_PEDIDO:COD_SUCURSAL:FECHA:COD_PERSONA:NOMBRE:COD_PROVEEDOR:COD_CONDICION_COMPRA:COD_MONEDA:NRO_REFERENCIA:COMENTARIO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133094169077155719)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133079569132155728)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:451:&SESSION.::&DEBUG.:451:P451_OPERACION:AGREGAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133094441714155719)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(133079569132155728)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133094997208155718)
,p_event_id=>wwv_flow_imp.id(133094441714155719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133079569132155728)
);
wwv_flow_imp.component_end;
end;
/
