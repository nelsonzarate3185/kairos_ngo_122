prompt --application/pages/page_00177
begin
--   Manifest
--     PAGE: 00177
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
 p_id=>177
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CANOCONF - SOLICITUD NO CONFORME(MODAL)'
,p_alias=>'CANOCONF-SOLICITUD-NO-CONFORME-MODAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Detalles'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1200'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20241016104745'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36095778485119719)
,p_plug_name=>'Datos'
,p_region_name=>'DATOS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36095887809119720)
,p_name=>'P177_COD_EMPRESA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36095961553119721)
,p_name=>'P177_NRO_SOLICITUD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36096093223119722)
,p_name=>'P177_TIPO_SOLICITUD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36096101670119723)
,p_name=>'P177_SER_SOLICITUD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36096284144119724)
,p_name=>'P177_NRO_GARANTIA_ANT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>unistr('Nro. Garant\00EDa Ant')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36096356419119725)
,p_name=>'P177_COD_ARTCULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.COD_ARTICULO||''-''||S.DESCRIPCION D,',
'       S.COD_ARTICULO R',
'  FROM ST_ARTICULOS S ',
' WHERE S.COD_EMPRESA = :P_COD_EMPRESA'))
,p_lov_cascade_parent_items=>'P177_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'800'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36096489485119726)
,p_name=>'P177_COD_PROBLEMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>'Problema'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MOTIVO||''-''||P.DESCRIPCION D, COD_MOTIVO--, RESPONSABLE',
'  FROM CA_PROBLEMAS_CONFORMIDAD P',
' WHERE P.COD_EMPRESA = :P_COD_EMPRESA',
'   AND NVL(ESTADO, ''N'') = ''S''',
'   AND PROBLEMA_CABECERA = :P177_COD_MOTIVO',
' ORDER BY 1'))
,p_lov_cascade_parent_items=>'P177_COD_MOTIVO'
,p_ajax_items_to_submit=>'P177_COD_MOTIVO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36096513688119727)
,p_name=>'P177_COD_MOTIVO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36096610680119728)
,p_name=>'P177_NRO_GARANTIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>'Nro Garantia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36096788559119729)
,p_name=>'P177_NRO_SERIE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>'Nro. Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36096859443119730)
,p_name=>'P177_OBSERVACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36096930054119731)
,p_name=>'P177_RESPONSABLE_DETALLE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>unistr('Responsable Soluci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC2:COMERCIAL;COMERCIAL,DISTRIBUCION;DISTRIBUCION,SERVICIO TECNICO;SERVICIO TECNICO,REPUESTOS;REPUESTOS,FACTURACION;FACTURACION,COMPRAS;COMPRAS,LOGISTICA;LOGISTICA,DIRECTORIO;DIRECTORIO,MARKETING;MARKETING,COBRANZAS;COBRANZAS,POSTVENTA;POSTVENTA,'
||'ADMINISTRACION;ADMINISTRACION,OPERACIONES;OPERACIONES,ALMACENAMIENTO;ALMACENAMIENTO'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36097333130119735)
,p_name=>'P177_COSTO_REVISION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>unistr('Costo Revisi\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36097457781119736)
,p_name=>'P177_COSTO_ARTICULO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>'Costo Articulo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36097543370119737)
,p_name=>'P177_COD_PROVEEDOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(36095778485119719)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_PROVEEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_proveedor||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, c.cod_proveedor R,c.cod_persona',
'from cm_proveedores c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36098002246119742)
,p_name=>'P177_SEQ_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36097151115119733)
,p_name=>'Cambiar_Nro_Garantia_Ant'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P177_NRO_GARANTIA_ANT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36097728669119739)
,p_event_id=>wwv_flow_imp.id(36097151115119733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CANOCONF.PROCBD_VALIDA_NRO_GARANTIA_ANT(:P_COD_EMPRESA            ,',
'                                        :P146_IND_DETALLE         ,',
'                                        :P146_NRO_COMPROBANTE_REF ,',
'                                        :P146_TIP_COMPROBANTE_REF ,',
'                                        :P146_SER_COMPROBANTE_REF ,',
'                                        :P177_NRO_GARANTIA_ANT    ,',
'                                        :P146_TIPO_COMPROBANTE    ,',
'                                        :P146_NRO_SOLICITUD       ,',
'                                          ',
'                                        :P177_COD_ARTCULO         ,',
'                                        :P177_COSTO_REVISION      ,',
'                                        :P177_COSTO_ARTICULO      ,',
'                                        :P177_COD_PROVEEDOR );'))
,p_attribute_02=>'P146_IND_DETALLE,P146_NRO_COMPROBANTE_REF,P177_NRO_GARANTIA_ANT,P146_TIPO_COMPROBANTE,P146_TIP_COMPROBANTE_REF,P146_SER_COMPROBANTE_REF,P177_NRO_GARANTIA_ANT,P146_NRO_SOLICITUD'
,p_attribute_03=>'P177_COD_ARTCULO,P177_COSTO_REVISION,P177_COSTO_ARTICULO,P177_COD_PROVEEDOR,P177_NRO_GARANTIA_ANT'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
