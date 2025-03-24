prompt --application/pages/page_00402
begin
--   Manifest
--     PAGE: 00402
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
 p_id=>402
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mano de Obra'
,p_alias=>'MANO-DE-OBRA'
,p_page_mode=>'MODAL'
,p_step_title=>'Mano de Obra'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Dialog-body{ background-color: #d3e4fa;}',
'',
'.apex-item-select , .apex-item-text , .apex-item-textarea, .apex-item-display-only{',
'   border-color: #003A85  !important;   ',
'}'))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240621165542'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(350928475166892850)
,p_plug_name=>'MANO DE OBRA '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116009224385673038)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(116009602318673039)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_button_name=>'Agregar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'BOTTOM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116010095392673040)
,p_name=>'P402_GARANTIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116010411812673042)
,p_name=>'P402_ID_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116010882302673043)
,p_name=>'P402_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116011259656673043)
,p_name=>'P402_ORIGEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116011640867673043)
,p_name=>'P402_COD_ARTICULO_OT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116012003436673043)
,p_name=>'P402_SER_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116012470821673043)
,p_name=>'P402_NRO_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116012821151673043)
,p_name=>'P402_COD_TECNICO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_prompt=>'Cod.Tecnico'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116013265926673044)
,p_name=>'P402_IND_ADICIONAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116013610670673044)
,p_name=>'P402_MARCA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116014037408673044)
,p_name=>'P402_COD_ARTICULO'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_prompt=>'Codigo'
,p_post_element_text=>unistr('<strong>&nbsp &nbsp   Art\00EDculo: &P402_COD_ARTICULO_OT. &nbsp &nbsp  Proveedor: &P402_COD_PROVEEDOR.</strong>')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_MANO_OBRA_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.descripcion, cod_articulo',
'  FROM st_articulos a, vt_origenes t',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND cod_rubro = ''MO''',
'   AND t.cod_origen = :P402_ORIGEN',
'   AND t.cod_empresa = a.cod_empresa',
'   AND t.origen = ''STNGO''',
'   AND a.tipo_mo = t.origen',
'   AND nvl(a.ind_particular, ''X'') <> nvl(:P402_GARANTIA, ''Z'')',
'   AND tipo_mo IS NOT NULL',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'   AND nvl(estado, ''S'') NOT IN (''I'', ''N'')',
'   AND (cod_linea = nvl((SELECT aa.cod_linea',
'                        ',
'                          FROM st_articulos aa',
'                         WHERE aa.cod_empresa = :P_COD_EMPRESA',
'                           AND aa.cod_articulo = :P402_COD_ARTICULO_OT),',
'                        cod_linea))',
'',
'UNION ALL',
'SELECT a.descripcion, cod_articulo',
'  FROM st_articulos a, vt_origenes t',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND cod_rubro = ''MO''',
'   AND t.cod_origen = :P402_ORIGEN',
'   AND t.cod_empresa = a.cod_empresa',
'   AND t.origen = ''STNGO''',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'   AND nvl(a.ind_particular, ''X'') <> nvl(:P402_GARANTIA, ''Z'')',
'   AND a.tipo_mo = t.origen',
'   AND nvl(estado, ''S'') NOT IN (''I'', ''N'')',
'      ',
'   AND (cod_categoria =',
'       nvl((SELECT aa.cod_categoria',
'            ',
'              FROM st_articulos aa',
'             WHERE aa.cod_empresa = :P_COD_EMPRESA',
'               AND aa.cod_articulo = :P402_COD_ARTICULO_OT),',
'            cod_categoria))',
'   AND a.cod_linea IS NULL',
'   AND tipo_mo IS NOT NULL',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'',
'UNION ALL',
'SELECT a.descripcion, cod_articulo',
'  FROM st_articulos a, vt_origenes t',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND cod_rubro = ''MO''',
'   AND t.cod_origen = :P402_ORIGEN',
'   AND t.cod_empresa = a.cod_empresa',
'   AND t.origen = ''STNGO''',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'   AND nvl(a.ind_particular, ''X'') <> nvl(:P402_GARANTIA, ''Z'')',
'   AND a.tipo_mo = t.origen',
'   AND nvl(estado, ''S'') NOT IN (''I'', ''N'')',
'      ',
'   AND (cod_familia = nvl((SELECT aa.cod_familia',
'                          ',
'                            FROM st_articulos aa',
'                           WHERE aa.cod_empresa = :P_COD_EMPRESA',
'                             AND aa.cod_articulo = :P402_COD_ARTICULO_OT),',
'                          cod_familia))',
'   AND a.cod_linea IS NULL',
'   AND a.cod_categoria IS NULL',
'   AND tipo_mo IS NOT NULL',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'',
'UNION ALL',
'SELECT a.descripcion, cod_articulo',
'  FROM st_articulos a, vt_origenes t',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND cod_rubro = ''MO''',
'   AND nvl(estado, ''S'') NOT IN (''I'', ''N'')',
'   AND t.cod_origen = :P402_ORIGEN',
'   AND t.cod_empresa = a.cod_empresa',
'   AND t.origen = ''STNGO''',
'   AND nvl(a.ind_particular, ''X'') <> nvl(:P402_GARANTIA, ''Z'')',
'   AND a.tipo_mo = ''STNGO''',
'   AND tipo_mo IS NOT NULL',
'   AND cod_categoria IS NULL',
'   AND a.cod_linea IS NULL',
'   AND a.cod_familia IS NULL',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'UNION ALL',
'SELECT a.descripcion, cod_articulo',
'  FROM st_articulos a, vt_origenes t',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
'   AND cod_rubro = ''MO''',
'   AND nvl(estado, ''S'') NOT IN (''I'', ''N'')',
'   AND t.cod_origen = :P402_ORIGEN',
'   AND t.cod_empresa = a.cod_empresa',
'   AND nvl(t.origen, ''X'') NOT IN ''STNGO''',
'   AND a.tipo_mo NOT IN ''STNGO''',
'   AND tipo_mo IS NOT NULL',
'   AND nvl(cod_marca, :P402_MARCA) = :P402_MARCA',
'   UNION ALL ',
' SELECT a.descripcion, a.cod_articulo FROM st_articulos a',
' WHERE a.cod_empresa = :P_COD_EMPRESA',
' AND a.cod_articulo = ''109''',
'   ;'))
,p_lov_cascade_parent_items=>'P402_COD_ARTICULO_OT,P402_ORIGEN,P402_MARCA,P402_GARANTIA'
,p_ajax_items_to_submit=>'P402_COD_ARTICULO_OT,P402_ORIGEN,P402_MARCA,P402_GARANTIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_css_classes=>'u-textUpper'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116014472765673044)
,p_name=>'P402_DESC_ARTICULO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>89
,p_tag_attributes=>'readonly'
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116014821230673044)
,p_name=>'P402_PRECIO_UNITARIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_prompt=>'Importe'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116015286107673045)
,p_name=>'P402_MONTO_TOTAL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_prompt=>'Monto Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116015604345673045)
,p_name=>'P402_ERROR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116016083287673045)
,p_name=>'P402_TIPO_CAMBIO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116016477651673045)
,p_name=>'P402_PORC_CLIENTE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116016846529673045)
,p_name=>'P402_COM_TEC'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116017248746673045)
,p_name=>'P402_COM_JEF'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116017601602673046)
,p_name=>'P402_MON_GAR'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116018077405673046)
,p_name=>'P402_MON_ADICIONAL'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(223108381301404510)
,p_name=>'P402_COD_PROVEEDOR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(350928475166892850)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(116018549260673049)
,p_validation_name=>'ARTICULO_OBLIGATORIO'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P402_COD_ARTICULO IS NULL THEN',
unistr('    RETURN ''Codigo debe tener alg\00FAn valor.'';'),
'ELSE',
'    declare',
'        dummy varchar2(1);',
'    BEGIN',
'        select distinct ''1''',
'        into dummy',
'        from st_articulos',
'        where cod_empresa=:P_COD_EMPRESA',
'        and   cod_articulo = upper(:P402_COD_ARTICULO)',
'        ;',
'        return nulL;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            return ''No existe el codigo ''||:P402_COD_ARTICULO;',
'        WHEN OTHERS THEN',
'            return SQLERRM;',
'    END;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(116014037408673044)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116019227161673050)
,p_name=>'obtiene_articulo'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P402_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116019796753673052)
,p_event_id=>wwv_flow_imp.id(116019227161673050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P402_COD_ARTICULO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_ARTICULO',
'from st_articulos a where cod_empresa=''1''',
'and cod_Art_corto=:P402_COD_ART_CORTO',
'and rownum=1'))
,p_attribute_07=>'P402_COD_ART_CORTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116020100177673052)
,p_name=>'OBTIENE_DESCRIPCION'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P402_COD_ARTICULO'
,p_condition_element=>'P402_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116020653339673052)
,p_event_id=>wwv_flow_imp.id(116020100177673052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
'    error exception;',
'    p_retorno varchar2(3500);',
'  begin',
'  /*  ',
'  p_retorno:=:p402_ser_comprobante||'' - ''||:p402_nro_comprobante||'' - ''||:p402_cod_cliente||'' - ''||:p402_cod_articulo_ot||'' - ''||:p402_cod_articulo ',
'                                ||'' - ''||:P402_GARANTIA||'' - ''||:P402_COD_PROVEEDOR||'' - ''||:p402_origen||'' - ''|| :p402_ind_adicional;',
'',
'    raise_application_error(-20000, p_retorno );',
'  */     ',
'  inv.obtiene_importe_mo_ot_apex(p_ser_comprobante => :p402_ser_comprobante,',
'                                 p_nro_comprobante => :p402_nro_comprobante,',
'                                 p_cod_cliente => :p402_cod_cliente,',
'                                 p_cod_articulo_ot => :p402_cod_articulo_ot,',
'                                 p_cod_articulo => trim(upper(:p402_cod_articulo)),',
'                                 p_garantia => :P402_GARANTIA,',
'                                 p_cod_tecnico => :P402_COD_PROVEEDOR,',
'                                 p_cod_origen => :p402_origen,',
'                                 p_ind_adicional => :p402_ind_adicional,',
'                                 p_monto => :P402_PRECIO_UNITARIO,',
'                                 p_monto_venta => :P402_MONTO_TOTAL,',
'                                 p_retorno => p_retorno,',
'                                 p_porcentaje_cliente => :P402_PORC_CLIENTE,',
'                                 p_tip_cambio => :P402_TIPO_CAMBIO,',
'                                 p_monto_comision_tecnico => :P402_COM_TEC,',
'                                 p_monto_comision_jefe_tecnico => :P402_COM_JEF,',
'                                 p_monto_gar_jt => :P402_MON_GAR,',
'                                 p_monto_adicional => :P402_MON_ADICIONAL,',
'                                 p_tecnico => :p402_cod_tecnico);',
'                 :P402_ERROR:=p_retorno;                ',
' ',
'        if nvl(p_retorno,''OK'')=''OK'' then',
'            raise error;',
'        end if;',
'',
' exception',
'    when error then',
'    apex_error.add_error(p_message               => ''Error: ''||p_retorno,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   );',
'          ----    apex_application.g_print_success_message := ''<span class="notification">Error: ''||p_retorno||'' </span>'';',
'end; '))
,p_attribute_02=>'P402_COD_CLIENTE,P402_ORIGEN,P402_COD_ARTICULO_OT,P402_SER_COMPROBANTE,P402_NRO_COMPROBANTE,P402_COD_TECNICO,P402_IND_ADICIONAL,P402_COD_ARTICULO,P402_COD_PROVEEDOR'
,p_attribute_03=>'P402_PRECIO_UNITARIO,P402_MONTO_TOTAL,P402_PORC_CLIENTE,P402_TIPO_CAMBIO,P402_COM_TEC,P402_COM_JEF,P402_MON_GAR,P402_MON_ADICIONAL,P402_ERROR,P402_COD_TECNICO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116021140979673052)
,p_event_id=>wwv_flow_imp.id(116020100177673052)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P402_DESC_ARTICULO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion',
'from st_articulos   where cod_empresa=''1''',
'and cod_articulo= upper(:P402_cod_Articulo)',
'and rownum=1'))
,p_attribute_07=>'P402_COD_ARTICULO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(115738628734259205)
,p_name=>'Nuevo'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(115738783520259206)
,p_event_id=>wwv_flow_imp.id(115738628734259205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'select c001 ORIGEN, c002  --, c003 cod_articulo',
'into :P402_ORIGEN, :P402_MARCA--, :P402_COD_ARTICULO_OT',
'from apex_collections',
'where collection_name = ''VT_PARAM_OBRA'';',
'exception ',
'    when others then ',
'        null;',
'end;',
'',
''))
,p_attribute_03=>'P402_ORIGEN,P402_MARCA,P402_COD_ARTICULO_OT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67054331205084710)
,p_name=>'Cierra modal'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(116009224385673038)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67054418206084711)
,p_event_id=>wwv_flow_imp.id(67054331205084710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(116018815533673050)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COLLECTION_CARGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P402_PRECIO_UNITARIO IS NOT NULL AND :P402_COD_ARTICULO IS NOT NULL THEN',
'            declare',
'                l_order_id    number;',
'                l_order_id_det    number;',
'                v_codigo NUMBER  :=  0;',
'            begin',
'                begin ',
'                    select  count(*)',
'                        into v_codigo',
'                          from apex_collections',
'                         where collection_name = ''VT_MANO_OBRA''',
'                         and c001 = upper(:P402_COD_ARTICULO);',
'                    exception ',
'                        when others then ',
'                            v_codigo := 0;',
'                end;',
'                IF v_codigo >  0 THEN ',
'                    RAISE_APPLICATION_ERROR(-20001, ''Ya existe la mano de obra seleccionada'');',
'                else  ',
'                  ',
'                        apex_collection.add_member(',
'                                                    p_collection_name => ''VT_MANO_OBRA'',',
'                                                    p_c001            => upper(:P402_COD_ARTICULO), ',
'                                                    p_c002            => '''', ',
'                                                    p_c003            => :P402_PRECIO_UNITARIO,',
'                                                    p_c004            => :P402_MONTO_TOTAL , ',
'                                                    p_c005            => :P402_COD_TECNICO, ',
'                                                    p_c006            => ''N'', ',
'                                                    p_c007            => ''N'',',
'                                                    p_c008            => :P402_PORC_CLIENTE , ',
'                                                    p_c009            => :P402_TIPO_CAMBIO,',
'                                                    p_c010            => :P402_COM_TEC, ',
'                                                    p_c011            => :P402_COM_JEF , ',
'                                                    p_c012            => :P402_MON_GAR,',
'                                                    p_c013            =>  :P402_MON_ADICIONAL ,',
'                                                    p_c014            => ''I''',
'                                                    )  ;  ',
'                 end if;    ',
'       exception',
'            WHEN OTHERs THEN',
'                apex_error.add_error(p_message => sqlerrm,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   );',
'        END;',
'ELSE',
'    apex_application.g_print_success_message := ''<span style="color:red">Mano de OBRA no registrada</span>'';  ',
'END IF;',
'',
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(116009602318673039)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(115739092686259209)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Cerrar region'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110448529265068109)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Obtiene articulo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P402_PRECIO_UNITARIO:=NULL;',
':P402_MONTO_TOTAL:=NULL;',
'',
'BEGIN  ',
'    SELECT C001',
'    INTO :P402_COD_ARTICULO_OT',
'    FROM  APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''ARTICULO''',
'    AND  ROWNUM = 1;',
'    EXCEPTION',
'    WHEN OTHERS THEN ',
'        NULL;',
'',
'END;',
'',
'begin',
'',
'SELECT  cod_marca ',
'into :P402_MARCA',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=''1''',
'--AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P402_COD_ARTICULO_OT;',
'  EXCEPTION',
'    WHEN OTHERS THEN ',
'        NULL;',
'end;',
'',
'',
'',
'    BEGIN',
'            SELECT  cod_tecnico',
'              INTO :P402_COD_TECNICO',
'              FROM vt_tecnicos v, personas p, cm_proveedores pro',
'             WHERE pro.cod_empresa = :P_COD_EMPLEADO',
'               AND pro.cod_empresa = v.cod_empresa',
'               AND pro.cod_persona = v.cod_persona                  ',
'               AND v.cod_persona = p.cod_persona                  ',
'               AND pro.cod_proveedor = :P402_cod_proveedor',
'               AND v.activo NOT IN (''N'', ''I'')',
'               AND rownum = 1;',
'          EXCEPTION          ',
'            WHEN OTHERS THEN',
'              :P402_COD_TECNICO := NULL;',
'            ',
'          END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
