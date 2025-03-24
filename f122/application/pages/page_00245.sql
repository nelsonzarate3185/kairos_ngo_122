prompt --application/pages/page_00245
begin
--   Manifest
--     PAGE: 00245
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
 p_id=>245
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte de Ventas'
,p_alias=>'REPORTE-DE-VENTAS'
,p_step_title=>'Reporte de Ventas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906150710'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(117302211022281589)
,p_plug_name=>'Reporte de Ventas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FEC_FACTURA,',
'FEC_PEDIDO,',
'COD_CLIENTE,',
'NOMBRE,',
'LOCALIDAD_PRINCIPAL,',
'NOMBRE_SUCURSAL,',
'DIRECCION_SUCURSAL,',
'DEPARTAMENTO,',
'CIUDAD,',
'DESPACHADO_DE,',
'COD_RUBRO,',
'COD_ART_CORTO,',
'COD_ARTICULO,',
'DESC_ARTICULO,',
'CANTIDAD,',
'MONTO,',
'monto_total_c_iva,',
'VOLUMEN,',
'SER_COMPROBANTE,',
'NRO_COMPROBANTE,',
'TIPO_ENTREGA,',
'COMENTARIO,',
'NRO_PEDIDO,',
'DEPARTAMENTO_SUCURSAL,',
'CIUDAD_SUCURSAL,',
'COD_VENDEDOR,',
'NOMBRE_VENDEDOR,',
'DESC_MARCA,',
'SEMANA',
' FROM V_VENTAS V ',
' where fec_factura between :P245_FECHA_DESDE AND :P245_FECHA_HASTA',
' AND (COD_VENDEDOR = :P245_COD_VENDEDOR OR :P245_COD_VENDEDOR IS NULL)',
'AND  (COD_SUPERVISOR= :P245_COD_SUPERVISOR OR :P245_COD_SUPERVISOR IS NULL)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P245_COD_VENDEDOR,P245_FECHA_DESDE,P245_FECHA_HASTA,P245_COD_SUPERVISOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(117302304089281589)
,p_name=>'Reporte de Ventas'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'0'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>117302304089281589
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60696918748116798)
,p_db_column_name=>'FEC_FACTURA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Fec Factura'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60697376412116799)
,p_db_column_name=>'FEC_PEDIDO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fec Pedido'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60697791500116799)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60698183831116799)
,p_db_column_name=>'NOMBRE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60698525949116799)
,p_db_column_name=>'LOCALIDAD_PRINCIPAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Localidad Principal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60698972582116799)
,p_db_column_name=>'NOMBRE_SUCURSAL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Nombre Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60699308310116800)
,p_db_column_name=>'DIRECCION_SUCURSAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Direccion Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60699744051116800)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60700583463116800)
,p_db_column_name=>'DESPACHADO_DE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Despachado De'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60700971737116801)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60700136888116800)
,p_db_column_name=>'CIUDAD'
,p_display_order=>21
,p_column_identifier=>'I'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60701343101116801)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>31
,p_column_identifier=>'L'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60701700544116801)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>41
,p_column_identifier=>'M'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60702142422116801)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>51
,p_column_identifier=>'N'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60702500570116801)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>61
,p_column_identifier=>'O'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60702963857116802)
,p_db_column_name=>'MONTO'
,p_display_order=>71
,p_column_identifier=>'P'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60696518946116798)
,p_db_column_name=>'MONTO_TOTAL_C_IVA'
,p_display_order=>81
,p_column_identifier=>'AC'
,p_column_label=>'Monto Total C Iva'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60703307714116802)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>91
,p_column_identifier=>'Q'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60703772459116802)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>101
,p_column_identifier=>'R'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60704127361116802)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>111
,p_column_identifier=>'S'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60704504834116802)
,p_db_column_name=>'TIPO_ENTREGA'
,p_display_order=>121
,p_column_identifier=>'T'
,p_column_label=>'Tipo Entrega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60704977303116803)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>131
,p_column_identifier=>'U'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60705352268116803)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>141
,p_column_identifier=>'V'
,p_column_label=>'Nro Pedido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60705746655116803)
,p_db_column_name=>'DEPARTAMENTO_SUCURSAL'
,p_display_order=>151
,p_column_identifier=>'W'
,p_column_label=>'Departamento Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60706117710116803)
,p_db_column_name=>'CIUDAD_SUCURSAL'
,p_display_order=>161
,p_column_identifier=>'X'
,p_column_label=>'Ciudad Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60706581829116803)
,p_db_column_name=>'COD_VENDEDOR'
,p_display_order=>171
,p_column_identifier=>'Y'
,p_column_label=>'Cod Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60706970406116804)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>181
,p_column_identifier=>'Z'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60707343732116804)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>191
,p_column_identifier=>'AA'
,p_column_label=>'Desc Marca'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(60707739131116804)
,p_db_column_name=>'SEMANA'
,p_display_order=>201
,p_column_identifier=>'AB'
,p_column_label=>'Semana'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(117317136186144532)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'296991'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_FACTURA:FEC_PEDIDO:COD_CLIENTE:NOMBRE:LOCALIDAD_PRINCIPAL:NOMBRE_SUCURSAL:DIRECCION_SUCURSAL:DEPARTAMENTO:CIUDAD:DESPACHADO_DE:COD_RUBRO:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:CANTIDAD:MONTO:VOLUMEN:SER_COMPROBANTE:NRO_COMPROBANTE:TIPO_ENTREGA:'
||'COMENTARIO:NRO_PEDIDO:DEPARTAMENTO_SUCURSAL:CIUDAD_SUCURSAL:COD_VENDEDOR:NOMBRE_VENDEDOR:DESC_MARCA:SEMANA:MONTO_TOTAL_C_IVA'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(60708498013116806)
,p_report_id=>wwv_flow_imp.id(117317136186144532)
,p_group_by_columns=>'COD_CLIENTE:NOMBRE'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTIDAD'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cantidad'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'MONTO'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Total S/ IVA'
,p_function_format_mask_02=>'999G999G999G999G990D00'
,p_function_sum_02=>'Y'
,p_function_03=>'SUM'
,p_function_column_03=>'MONTO_TOTAL_C_IVA'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'Total C/ IVA'
,p_function_format_mask_03=>'999G999G999G999G990D00'
,p_function_sum_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60694615636116792)
,p_name=>'P245_COD_VENDEDOR'
,p_item_sequence=>10
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_VENDEDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--LV PARA VTFAPECO  ',
'  select cod_vendedor || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,',
'         cod_vendedor R',
'    from fv_vendedores u,',
'          personas p',
'   where u.cod_empresa = :p_cod_empresa',
'     and u.cod_persona = p.cod_persona;',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60695040967116794)
,p_name=>'P245_COD_SUPERVISOR'
,p_item_sequence=>20
,p_prompt=>'Cod Supervisor'
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
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60695402807116794)
,p_name=>'P245_FECHA_DESDE'
,p_is_required=>true
,p_item_sequence=>30
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60695857759116794)
,p_name=>'P245_FECHA_HASTA'
,p_is_required=>true
,p_item_sequence=>40
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp.component_end;
end;
/
