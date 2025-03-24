prompt --application/pages/page_00570
begin
--   Manifest
--     PAGE: 00570
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
 p_id=>570
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Usuario Inventario Movil'
,p_alias=>'USUARIO-INVENTARIO-MOVIL1'
,p_step_title=>'Usuario Inventario Movil'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240626102321'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(182722747882395508)
,p_plug_name=>'Usuario Inventario Movil'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_USUARIO,  ',
'DEPOSITO,',
'ESTADO, a.rowid, EMPRESA_ORIGEN,',
'case when nvl(empresa_origen,''NGO'') =''NGO'' then ',
'     (Select descripcion  ',
'       from sucursales',
'      where cod_empresa  = :P_cod_empresa',
'        and cod_sucursal = deposito  )',
'          when nvl(empresa_origen,''NGO'') =''BH'' then ',
'     (Select descripcion  ',
'       from sucursales',
'      where cod_empresa  = ''18''',
'        and cod_sucursal = deposito  )',
'    when nvl(empresa_origen,''NGO'') =''CPH'' then ',
'  ',
'    ( Select descripcion ',
'      ',
'       from v_sucursales_cph',
'      where cod_empresa  = :P_cod_empresa',
'        and cod_sucursal = deposito )',
'',
'  when NVL(empresa_origen,''NGO'') =''TG'' then ',
'     (Select descripcion ',
'     ',
'       from  INV.V_depositos_tf',
'      where cod_empresa  = :P_cod_empresa',
'        and cod_sucursal = deposito) ELSE  NULL END DESC_DEPOSITO',
' ',
'',
'',
'from MO_USUARIOS a'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Usuario Inventario Movil'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(182722850537395508)
,p_name=>'Usuario Inventario Movil'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:571:&SESSION.::&DEBUG.:RP:P571_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'INV'
,p_internal_uid=>182722850537395508
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182724493750395505)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'D'
,p_column_label=>'ROWID'
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
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182723224873395506)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(6277068429341916)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182723645765395506)
,p_db_column_name=>'DEPOSITO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Deposito'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172917186053833250)
,p_db_column_name=>'DESC_DEPOSITO'
,p_display_order=>12
,p_column_identifier=>'F'
,p_column_label=>'Desc Deposito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(182724035875395505)
,p_db_column_name=>'ESTADO'
,p_display_order=>22
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(127070015180645387)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(172916832433833247)
,p_db_column_name=>'EMPRESA_ORIGEN'
,p_display_order=>32
,p_column_identifier=>'E'
,p_column_label=>'Empresa Origen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(182726752908395204)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1827268'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_USUARIO:EMPRESA_ORIGEN:DEPOSITO:DESC_DEPOSITO:ESTADO:'
,p_sort_column_1=>'COD_USUARIO'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182724943281395505)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(182722747882395508)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:571:&SESSION.::&DEBUG.:571'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182725229424395505)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(182722747882395508)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182725760280395504)
,p_event_id=>wwv_flow_imp.id(182725229424395505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(182722747882395508)
);
wwv_flow_imp.component_end;
end;
/
