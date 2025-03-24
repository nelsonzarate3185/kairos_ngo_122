prompt --application/pages/page_00186
begin
--   Manifest
--     PAGE: 00186
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
 p_id=>186
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Clientes'
,p_alias=>'CLIENTES'
,p_step_title=>'Clientes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241024142042'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96798756467347979)
,p_plug_name=>'Listado_Clientes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_CLIENTE,',
'NOMBRE,',
'DIRECCION,',
'CODIGO_CIUDAD,',
'DESCRIPCION_CIUDAD,',
'CODIGO_DEPARTAMENTO,',
'DESCRIPCION_DEPARTAMENTO,',
'TELEFONO,',
'RUC,',
'ESTADO,',
'MOTIVO,',
'AGENTE_CREDITO,',
'AGENTE_COBRO,',
'COD_LISTA_PRECIO,',
'COD_CONDICION_VENTA,',
'LINEA_DE_CREDITO,',
'MONEDA,',
'COD_TIP_CLIENTE,',
'TIPO_CLIENTE,',
'FEC_ULTIMA_COMPRA,',
'FECHA_ULTIMA_VISITA,',
'LINEA_EJECUTADA,',
'DEUDA_VENCIDA,',
'DEUDA_TOTAL,',
'TIPO_IMPUESTO,',
'CREDITO_DISPONIBLE,',
'PEDIDOS_PENDIENTES,',
'VENTA_ANIO,',
'VENTA_MES,CODIGO_VENDEDOR, NOMBRE_VENDEDOR,',
'sucursales, cod_persona',
' from v_cliente_apex',
' where (CODIGO_VENDEDOR = :P186_COD_VENDEDOR OR :P186_COD_VENDEDOR IS NULL)',
' /*AND (ESTADO = :P186_ESTADO OR :P186_ESTADO IS NULL)*/',
' /*AND (COD_TIP_CLIENTE = :P186_TIPO_CLIENTE OR :P186_TIPO_CLIENTE IS NULL)*/',
' and (COD_SUPERVISOR = :P186_COD_SUPERVISOR OR :P186_COD_SUPERVISOR IS NULL)',
'',
'and REGEXP_LIKE (:P186_TIPO_CLIENTE,COD_TIP_CLIENTE)',
'and REGEXP_LIKE ( :P186_ESTADO,ESTADO)',
'',
' order by 2'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P186_COD_VENDEDOR,P186_ESTADO,P186_TIPO_CLIENTE,P186_COD_SUPERVISOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(96798907869347979)
,p_name=>'Clientes'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'20'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>96798907869347979
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40147302277472735)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40147772221472736)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40148124618472736)
,p_db_column_name=>'DIRECCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40148510215472736)
,p_db_column_name=>'CODIGO_CIUDAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Codigo Ciudad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40148960113472736)
,p_db_column_name=>'DESCRIPCION_CIUDAD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Descripcion Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40149356962472737)
,p_db_column_name=>'CODIGO_DEPARTAMENTO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Codigo Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40149741866472737)
,p_db_column_name=>'DESCRIPCION_DEPARTAMENTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Descripcion Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40150192863472737)
,p_db_column_name=>'TELEFONO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40150512957472737)
,p_db_column_name=>'RUC'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40150966199472737)
,p_db_column_name=>'ESTADO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40151345371472738)
,p_db_column_name=>'MOTIVO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40151712998472738)
,p_db_column_name=>'AGENTE_CREDITO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Agente Credito'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40152138996472738)
,p_db_column_name=>'AGENTE_COBRO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Agente Cobro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40152511762472738)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40152902376472739)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40153309536472739)
,p_db_column_name=>'LINEA_DE_CREDITO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Linea De Credito'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40153762415472739)
,p_db_column_name=>'MONEDA'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40154125590472739)
,p_db_column_name=>'COD_TIP_CLIENTE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Cod Tip Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40154587322472739)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40154996590472740)
,p_db_column_name=>'FEC_ULTIMA_COMPRA'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Fec Ultima Compra'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40155321002472740)
,p_db_column_name=>'FECHA_ULTIMA_VISITA'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Fecha Ultima Visita'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40155761697472740)
,p_db_column_name=>'LINEA_EJECUTADA'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Linea Ejecutada'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40156170334472740)
,p_db_column_name=>'DEUDA_VENCIDA'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Deuda Vencida'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40156504801472740)
,p_db_column_name=>'DEUDA_TOTAL'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Deuda Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40156999552472741)
,p_db_column_name=>'TIPO_IMPUESTO'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Tipo Impuesto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40157379824472741)
,p_db_column_name=>'CREDITO_DISPONIBLE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Credito Disponible'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40157781974472741)
,p_db_column_name=>'PEDIDOS_PENDIENTES'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Pedidos Pendientes'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40158184839472741)
,p_db_column_name=>'VENTA_ANIO'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Venta Anio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40158552686472742)
,p_db_column_name=>'VENTA_MES'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Venta Mes'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40158957076472742)
,p_db_column_name=>'CODIGO_VENDEDOR'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Codigo Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40159380239472742)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40159707872472742)
,p_db_column_name=>'SUCURSALES'
,p_display_order=>41
,p_column_identifier=>'AF'
,p_column_label=>'Sucursales'
,p_column_link=>'f?p=&APP_ID.:439:&SESSION.::&DEBUG.:RP,439:P439_COD_CLIENTE:#COD_CLIENTE#'
,p_column_linktext=>'#SUCURSALES#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(40160105169472742)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>51
,p_column_identifier=>'AG'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(96819662686248118)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'297489'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'COD_CLIENTE:NOMBRE:DIRECCION:DESCRIPCION_CIUDAD:DESCRIPCION_DEPARTAMENTO:TELEFONO:RUC:ESTADO:MOTIVO:AGENTE_CREDITO:AGENTE_COBRO:LINEA_DE_CREDITO:MONEDA:TIPO_CLIENTE:FEC_ULTIMA_COMPRA:FECHA_ULTIMA_VISITA:LINEA_EJECUTADA:DEUDA_VENCIDA:DEUDA_TOTAL:CREDI'
||'TO_DISPONIBLE:PEDIDOS_PENDIENTES:VENTA_ANIO:VENTA_MES:NOMBRE_VENDEDOR::SUCURSALES:COD_PERSONA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40161149089472748)
,p_name=>'P186_COD_VENDEDOR'
,p_item_sequence=>10
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE||''(''||f.cod_vendedor||'')'' nombre,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=''1''',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40161597800472749)
,p_name=>'P186_ESTADO'
,p_item_sequence=>20
,p_item_default=>'ACTIVO'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ACTIVO'' d, ''ACTIVO'' C FROM DUAL UNION ALL',
'select ''BLOQUEADO'' d, ''BLOQUEADO'' C FROM DUAL UNION ALL',
'select ''CREDITO BLOQUEADO'' d, ''CREDITO BLOQUEADO'' C FROM DUAL',
'',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40161916069472750)
,p_name=>'P186_TIPO_CLIENTE'
,p_item_sequence=>30
,p_item_default=>'NO DEFINIDO'
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPO_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_tip_cliente',
'			    from cc_tipo_cliente',
'                            order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40162382862472750)
,p_name=>'P186_USUARIO'
,p_item_sequence=>40
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40162714207472750)
,p_name=>'P186_COD_SUPERVISOR'
,p_item_sequence=>50
,p_prompt=>'Supervisor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUPERVISORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,Fc.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P, fv_vendedores fc',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'and f.cod_empresa=fc.cod_empresa',
'and f.cod_supervisor=fc.cod_vendedor',
'AND Fc.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'group by  P.NOMBRE,Fc.COD_VENDEDOR'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40164922708472753)
,p_name=>'ACTUALIZA_REPORTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P186_COD_VENDEDOR,P186_ESTADO,P186_TIPO_CLIENTE,P186_COD_SUPERVISOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40165492399472755)
,p_event_id=>wwv_flow_imp.id(40164922708472753)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(96798756467347979)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40165870913472755)
,p_name=>'carga_inicial'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40166370260472755)
,p_event_id=>wwv_flow_imp.id(40165870913472755)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P186_COD_VENDEDOR:=:P0_COD_VENDEDOR;',
'  ',
'  END;'))
,p_attribute_02=>'P186_USUARIO'
,p_attribute_03=>'P186_COD_VENDEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
