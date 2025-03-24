prompt --application/pages/page_00087
begin
--   Manifest
--     PAGE: 00087
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
 p_id=>87
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte de Visitas'
,p_alias=>'REPORTE-DE-VISITAS'
,p_step_title=>'Reporte de Visitas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241113171139'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86809250548756841)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(93721310180083033)
,p_name=>'Reporte de Visitas'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FECHA_VISITA, FECHA_FIN_VISITA,',
'CODIGO_CLIENTE, NOMBRE_CLIENTE, NOMBRE, MOTIVO, observation, EMPRESA, LATITUD_LONGITUD,',
'substr(LATITUD_LONGITUD,0,instr(LATITUD_LONGITUD,'','')-1) latitud,',
'substr(LATITUD_LONGITUD,instr(LATITUD_LONGITUD,'','')+1, length(LATITUD_LONGITUD)) longitud, ',
' TIPO ',
'FROM (SELECT v.fecha_visita,v.fecha_fin_visita,',
'v.codigo_cliente, p.nombre nombre_cliente,',
'pc.nombre nombre, ',
'e.descripcion motivo,',
'v.observation, ''NGO'' EMPRESA, V.LATITUD_LONGITUD, CASE WHEN COD_GRUPO= ''CTACOB'' THEN ''C'' ',
'  WHEN COD_GRUPO= ''PEDIDO'' THEN ''V'' ',
'      WHEN COD_GRUPO= ''PROM'' THEN ''P''  ELSE ''P'' END TIPO',
' FROM cc_visit_cast V , cc_clientes cli, personas p,cc_estado_visita e, cc_custodios cus, personas pc,',
' USUARIOS USU',
' where trunc(v.fecha_visita) between :P87_FECHA_DESDE AND :P87_FECHA_HASTA',
' AND (v.codigo_usuario = :P87_COD_usuario OR :P87_COD_usuario IS NULL) ',
'  AND (v.cod_usuario = :P87_COD_usuario OR :P87_COD_usuario IS NULL) ',
' and v.cod_empresa=:P_COD_EMPRESA',
' and v.cod_empresa=cli.cod_empresa',
' and v.codigo_cliente=cli.cod_cliente',
' and cli.cod_persona=p.cod_persona',
' and cus.cod_persona=pc.cod_persona',
' and e.cod_visita(+)=v.motivo',
' and cus.cod_empresa=v.cod_empresa',
' and cus.cod_custodio=v.codigo_usuario',
' AND USU.COD_EMPRESA=CUS.COD_EMPRESA',
' AND USU.COD_PERSONA=CUS.COD_PERSONA',
' union all',
' SELECT v.fecha_visita,v.fecha_fin_visita,',
'v.codigo_cliente, p.nombre nombre_cliente,',
'pc.nombre nombre, ',
'e.descripcion motivo,',
'v.observation, ''CPH'' EMPRESA, V.LATITUD_LONGITUD, CASE WHEN COD_GRUPO= ''CTACOB'' THEN ''C'' ',
'  WHEN COD_GRUPO= ''PEDIDO'' THEN ''V'' ',
'      WHEN COD_GRUPO= ''PROM'' THEN ''P''  ELSE ''P'' END TIPO',
' FROM cc_visit_cast@dblink_cph V , cc_clientes@dblink_cph cli, personas@dblink_cph p,cc_estado_visita e, cc_custodios cus, personas pc,',
'  USUARIOS@DBLINK_CPH USU',
' where trunc(v.fecha_visita) between :P87_FECHA_DESDE AND :P87_FECHA_HASTA',
' AND (v.codigo_usuario = :P87_COD_usuario OR :P87_COD_usuario IS NULL) ',
'  AND (v.cod_usuario = :P87_COD_usuario OR :P87_COD_usuario IS NULL) ',
' and v.cod_empresa=:p_cod_empresa',
' and v.cod_empresa=cli.cod_empresa',
' and v.codigo_cliente=cli.cod_cliente',
' and cli.cod_persona=p.cod_persona',
' and pc.cod_persona=cus.cod_persona',
' and e.cod_visita=v.motivo',
' and cus.cod_empresa=v.cod_empresa',
' and cus.cod_custodio=v.codigo_usuario',
'  AND USU.COD_EMPRESA=CUS.COD_EMPRESA',
' AND USU.COD_PERSONA=CUS.COD_PERSONA',
' )',
' WHERE (EMPRESA = :P87_EMPRESA OR :P87_EMPRESA=''T'')',
' AND (TIPO = :P87_TIPO OR :P87_TIPO IS NULL)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P87_COD_USUARIO,P87_FECHA_DESDE,P87_FECHA_HASTA,P87_EMPRESA,P87_TIPO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Descargar'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13839321674441808)
,p_query_column_id=>1
,p_column_alias=>'FECHA_VISITA'
,p_column_display_sequence=>1
,p_column_heading=>'Fecha Visita'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MM-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13839772238441808)
,p_query_column_id=>2
,p_column_alias=>'FECHA_FIN_VISITA'
,p_column_display_sequence=>2
,p_column_heading=>'Fecha Fin Visita'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MM-YYYY HH24:MI'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13840122883441808)
,p_query_column_id=>3
,p_column_alias=>'CODIGO_CLIENTE'
,p_column_display_sequence=>3
,p_column_heading=>'Codigo Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13840550148441809)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_CLIENTE'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13840956356441809)
,p_query_column_id=>5
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>5
,p_column_heading=>'Cobrador/Gestor'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13841340934441809)
,p_query_column_id=>6
,p_column_alias=>'MOTIVO'
,p_column_display_sequence=>6
,p_column_heading=>'Motivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13841791468441809)
,p_query_column_id=>7
,p_column_alias=>'OBSERVATION'
,p_column_display_sequence=>7
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13842100881441809)
,p_query_column_id=>8
,p_column_alias=>'EMPRESA'
,p_column_display_sequence=>8
,p_column_heading=>'Empresa'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(108923651728676435)
,p_query_column_id=>9
,p_column_alias=>'LATITUD_LONGITUD'
,p_column_display_sequence=>18
,p_column_heading=>'Latitud Longitud'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:438:&SESSION.::&DEBUG.:RR,438:P238_LATITUD,P238_LONGITUD,P238_COD_CLIENTE:#LATITUD#,#LONGITUD#,#CODIGO_CLIENTE#'
,p_column_linktext=>'#LATITUD_LONGITUD#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(108923902703676438)
,p_query_column_id=>10
,p_column_alias=>'LATITUD'
,p_column_display_sequence=>28
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(108924039199676439)
,p_query_column_id=>11
,p_column_alias=>'LONGITUD'
,p_column_display_sequence=>38
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76098355142162809)
,p_query_column_id=>12
,p_column_alias=>'TIPO'
,p_column_display_sequence=>48
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13837017464441806)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(86809250548756841)
,p_button_name=>'GO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13837401333441806)
,p_name=>'P87_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(86809250548756841)
,p_item_default=>':P_COD_CUSTODIO'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Usuarios'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, cod_custodio',
'from cc_custodios c, personas p',
'where cod_empresa=:p_cod_empresa',
'and nvl(activo,''N'')=''S''',
'and c.cod_persona=p.cod_persona',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(13837870675441806)
,p_name=>'P87_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(86809250548756841)
,p_item_default=>'T'
,p_prompt=>'Empresa'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''TODOS'' D, ''T'' C',
'FROM DUAL UNION ALL',
'SELECT ''NGO'' D, ''NGO'' C',
'FROM DUAL UNION ALL',
'SELECT ''CPH'' D, ''CPH'' C',
'FROM DUAL ',
'UNION ALL',
'SELECT ''BH'' D, ''BH'' C',
'FROM DUAL '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13838201194441807)
,p_name=>'P87_FECHA_DESDE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(86809250548756841)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Desde'
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
 p_id=>wwv_flow_imp.id(13838684021441807)
,p_name=>'P87_FECHA_HASTA'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(86809250548756841)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Hasta'
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
 p_id=>wwv_flow_imp.id(76098268044162808)
,p_name=>'P87_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(86809250548756841)
,p_prompt=>'Tipos'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Promotores;P,Cobrador;C,Vendedor;V'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13842523181441810)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13837017464441806)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13843037286441811)
,p_event_id=>wwv_flow_imp.id(13842523181441810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93721310180083033)
);
wwv_flow_imp.component_end;
end;
/
