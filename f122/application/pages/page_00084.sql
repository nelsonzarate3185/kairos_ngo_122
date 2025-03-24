prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
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
 p_id=>84
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Finalizar Gestion'
,p_alias=>'FINALIZAR-GESTION'
,p_page_mode=>'MODAL'
,p_step_title=>'Finalizar Gestion'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230413123355'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(206029703273868478)
,p_plug_name=>'Finalizar Gestion'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13784273294141307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(206029703273868478)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:RP,56::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13784645497141307)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(206029703273868478)
,p_button_name=>'Crear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar Gestion'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13788421913141309)
,p_branch_name=>'if_a_la_pagina_anterior'
,p_branch_action=>'f?p=&APP_ID.:489:&SESSION.::&DEBUG.:RP,489::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(13784645497141307)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13785008694141307)
,p_name=>'P84_NRO_MOVIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(206029703273868478)
,p_prompt=>'Nro Movimiento'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13785461648141308)
,p_name=>'P84_ID_VISITA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(206029703273868478)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13785889226141308)
,p_name=>'P84_RESULTADO'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(206029703273868478)
,p_prompt=>'Resultado de Visita'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION, COD_VISITA from cc_estado_visita a',
'order by 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(13786232655141308)
,p_name=>'P84_COMENTARIO'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(206029703273868478)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13786613926141308)
,p_name=>'P84_FINALIZAR'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(206029703273868478)
,p_item_default=>'S'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''FINALIZADO'' D, ''S'' C',
'from dual union all',
'select ''CANCELADO'' D, ''N'' C',
'from dual union all',
'select ''PENDIENTE'' D, ''P'' C FROM DUAL'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13787491900141309)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13787951412141309)
,p_event_id=>wwv_flow_imp.id(13787491900141309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'  begin',
'  select id ',
'    into :P84_ID_VISITA',
'  from cc_visit_cast v, cc_clientes cc, personas  p',
'  where v.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO',
'  and cc.cod_empresa=v.cod_empresa',
'  and cc.cod_cliente=v.codigo_cliente',
'  and cc.cod_persona=p.cod_persona;',
'  exception',
'  when others then',
'    :P84_ID_VISITA:= null;',
'   ',
'  end;',
'   '))
,p_attribute_03=>'P84_ID_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13787015431141308)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'inserta_seguimiento'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'BEGIN',
'UPDATE cc_visit_cast',
'SET fecha_fin_visita = sysdate,',
'observation = :P84_COMENTARIO,  motivo = :P84_RESULTADO',
' ',
'where cod_empresa=''1''',
'and id = :P84_ID_VISITA',
'AND fecha_fin_visita IS NULL;',
'END;',
'',
'begin ',
'UPDATE cc_visit_cast c',
'SET fecha_fin_visita = sysdate,',
'observation = :P84_COMENTARIO,  motivo = :P84_RESULTADO',
'  where c.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO ; ',
'  end;',
'',
'',
'',
'',
'BEGIN',
'UPDATE cc_visit_cast@dblink_CPH',
'SET fecha_fin_visita = sysdate,',
'observation = :P84_COMENTARIO,  motivo = :P84_RESULTADO',
' ',
'where cod_empresa=''1''',
'and id = :P84_ID_VISITA',
'AND fecha_fin_visita IS NULL;',
'END;',
'',
'END;',
'',
'',
'begin ',
'UPDATE cc_visit_cast@dblink_CPH c',
'SET fecha_fin_visita = sysdate,',
'observation = :P84_COMENTARIO,  motivo = :P84_RESULTADO',
'  where c.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO ; ',
'  end;',
'',
'begin',
'BEGIN',
'UPDATE cc_gestiones_visitas',
'SET REALIZADO = :P84_FINALIZAR,',
'COMENTARIO_RESULTADO = :P84_COMENTARIO,  COD_RESULTADO = :P84_RESULTADO',
' ',
'where cod_empresa=''1''',
'and nro_movimiento = :P84_NRO_MOVIMIENTO;',
'END;',
'BEGIN',
'',
'INSERT INTO cc_seguimiento_cobranza(COD_EMPRESA, ',
'                                       comentario, nro_movimiento,',
'                       COD_USUARIO, FECHA )',
'     VALUES (''1'', ',
'              CASE WHEN :P84_FINALIZAR =''S'' THEN',
'                                        ''Finalizado '' ',
'                                        WHEN :P84_FINALIZAR=''N'' THEN',
'                                        ''Cancelado '' ',
'                                        WHEN :P84_FINALIZAR =''P'' THEN',
'                                        ''Pendiente '' ',
'                                        end ||:P84_COMENTARIO, :P84_NRO_MOVIMIENTO, nvl(htmldb_application.g_user,user), ',
'     SYSTIMESTAMP) ;',
'end;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(13784645497141307)
,p_process_success_message=>'Visita Finalizada'
);
wwv_flow_imp.component_end;
end;
/
