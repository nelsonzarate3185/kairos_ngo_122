prompt --application/pages/page_00353
begin
--   Manifest
--     PAGE: 00353
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
 p_id=>353
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTPRESUPUESTOV'
,p_alias=>'VTPRESUPUESTOV'
,p_step_title=>'VTPRESUPUESTOV'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240613122737'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(152980372046629048)
,p_plug_name=>'VTPRESUPUESTOV'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       COD_VENDEDOR,',
'       COD_CONDICION_VENTA,',
'       COD_LISTA_PRECIO, tot_comprobante,',
'        case when nvl(monto_total,0)>0 then round((monto_total-costo_total)/monto_total*100,2) else 0 end margen',
'from (',
'    select COD_EMPRESA,',
'       TIP_COMPROBANTE,',
'       SER_COMPROBANTE,',
'       NRO_COMPROBANTE,',
'       COD_SUCURSAL,',
'       FEC_COMPROBANTE,',
'       COD_CLIENTE,',
'       COD_VENDEDOR,',
'       COD_CONDICION_VENTA,',
'       COD_LISTA_PRECIO,',
'       DESCUENTO,',
'       COD_MONEDA,',
'       TIP_CAMBIO,',
'       TOT_COMPROBANTE,',
'       TOT_GRAVADAS,',
'       TOT_EXENTAS,',
'       TOT_IVA,',
'       ESTADO,',
'       FEC_ESTADO,',
'       COD_USUARIO,',
'       FEC_ALTA,',
'       NRO_AUTORIZACION,',
'       CAMBIO_MONEDA_PRECIO,',
'       TIP_CAMBIO_COMPRA,',
'       FEC_VENCIMIENTO,',
'       TOT_DESCUENTO_DET,',
'       TIP_COMPROBANTE_REF,',
'       TEL_CLIENTE,',
'       RUC,',
'       PROCESADO,',
'       NRO_COMPROBANTE_REF,',
'       NOM_CLIENTE,',
'       NOMBRE_CAB,',
'       GRU_COMPROBANTE,',
'       FEC_NACIMIENTO,',
'       DIR_CLIENTE,',
'       DIAS,',
'       DESCUENTO_DET,',
'       COMENTARIO,',
'       COLUMNA,',
'       COD_SECTOR,',
'       CAMBIO_DOLAR,',
'       COD_DIRECCION,',
'       TIP_COMPROBANTE_PET,',
'       SER_COMPROBANTE_PET,',
'       NRO_COMPROBANTE_PET,',
'       NRO_INSCRIPCION_AD,',
'       IND_EXENTO_AD,',
'       COD_USUARIO_AUTORIZACION,',
'       FECHA_AUTORIZACION,',
'       AUTORIZADO,',
'       RECARGO,',
'       CONTROL_FIN,',
'       IND_IMPRESO,',
'       COD_MOTIVO_ANULACION,',
'       COD_USUARIO_ANU,',
'       COD_MOTIVO_ANU,',
'       OBSERVACION,',
'       PRESUPUESTO,',
'       FECHA_APROBADO,',
'       NRO_LLAMADA,',
'       FEC_SEGUIMIENTO,',
'       PESO_TOTAL,',
'       VOLUMEN_TOTAL,',
'       FLETE_TOTAL,',
'       COD_FLETE,',
'       SER_COMPROBANTE_REF,',
'       ENTREGA_INICIAL,',
'       PORC_ENT_INICIAL,',
'       FEC_PAGO,',
'       CONSULTA_INFORMCONF,',
'       DESC_ERROR,',
'       HORA_ALTA,',
'       FEC_APRO_RECHA,',
'       COD_USU_APRO_RECHA,',
'       LUGAR_ENTREGA,',
'       NRO_ORDEN_COMPRA,',
'       COD_SUCURSAL_DIST,',
'       NRO_CONTACTO,',
'       GARANTIA,',
'       VALIDEZ,',
'       CORREO_CLIENTE,',
'       TIPO_ENTREGA,',
'       nvl((select  sum((  (nvl(s.costo_prom_nue,0))/ decode(a.cOD_MONEDA,''2'',a.TIP_CAMBIO, 1))* (d.cantidad))',
'        from st_costos_art s, vt_presupuesto_detalle d',
'       where s.cod_empresa = a.cod_empresa',
'       and a.cod_empresa=d.COD_EMPRESA',
'       and a.tip_comprobante=d.tip_comprobante',
'       and a.ser_comprobante=d.ser_comprobante',
'       and a.nro_comprobante=d.nro_comprobante',
'         and s.cod_articulo = d.cod_articulo',
'         and s.tip_comprobante <> ''INI''',
'         and  nvl(s.fec_proceso,a.fec_comprobante) <= a.FEC_COMPROBANTE',
'         and  (nvl(s.fec_proceso, a.fec_comprobante) )   =',
'                               ( select max( (nvl(s1.fec_proceso, a.fec_comprobante) ) )',
'                                  from st_costos_art s1',
'                                 where s1.cod_empresa =a.cod_empresa',
'                                   and s1.cod_articulo = d.cod_articulo',
'                                   and s1.tip_comprobante <> ''INI''',
'                                   and nvl(s1.fec_proceso, a.fec_comprobante) <= a.FEC_COMPROBANTE) ),0 )costo_total,',
'                                    nvl((select sum(d.monto_total)/*/a.tip_cambio*/',
'        from   vt_presupuesto_detalle d',
'       where  a.cod_empresa=d.COD_EMPRESA',
'       and a.tip_comprobante=d.tip_comprobante',
'       and a.ser_comprobante=d.ser_comprobante',
'       and a.nro_comprobante=d.nro_comprobante ),0 )monto_total',
'  from VT_PRESUPUESTO_CABECERA a',
'  where cod_empresa=:P_COD_EMPRESA',
'  and fec_comprobante>sysdate-900',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VTPRESUPUESTOV'
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
 p_id=>wwv_flow_imp.id(152980409877629048)
,p_name=>'VTPEDIDOV'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:354:&SESSION.::&DEBUG.:RP,:P354_NRO_COMPROBANTE,P354_OPERACION,P354_SER_COMPROBANTE:\#NRO_COMPROBANTE#\,MODIFICAR,\#SER_COMPROBANTE#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>152980409877629048
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96901863451849327)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96902267112849328)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96902634176849328)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nro. Comprobante'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96903093015849328)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(57557475286695231)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96903414904849328)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fecha Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96903898761849329)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96904207750849329)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(94579312435396545)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96904657127849329)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>unistr('Condici\00F3n Venta')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(94562971203273556)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96905035951849329)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Lista Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(94569444264309907)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(96906661503849330)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Comprobante'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(650047673042536532)
,p_db_column_name=>'MARGEN'
,p_display_order=>25
,p_column_identifier=>'EH'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(153035777849629510)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'561345'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'NRO_COMPROBANTE:COD_SUCURSAL:FEC_COMPROBANTE:COD_CLIENTE:COD_VENDEDOR:COD_CONDICION_VENTA:COD_LISTA_PRECIO:TOT_COMPROBANTE:MARGEN:'
,p_sort_column_1=>'NRO_COMPROBANTE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FEC_COMPROBANTE'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(96954113650849357)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(152980372046629048)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:354:&SESSION.::&DEBUG.:353:P354_OPERACION:AGREGAR'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96954531247849363)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(152980372046629048)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96955089442849364)
,p_event_id=>wwv_flow_imp.id(96954531247849363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(152980372046629048)
);
wwv_flow_imp.component_end;
end;
/
