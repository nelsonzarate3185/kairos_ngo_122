prompt --application/pages/page_00078
begin
--   Manifest
--     PAGE: 00078
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
 p_id=>78
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Finalizar Visita'
,p_alias=>'FINALIZAR-VISITA'
,p_page_mode=>'MODAL'
,p_step_title=>'Finalizar Visita'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20221012082428'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(382942118891702825)
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
 p_id=>wwv_flow_imp.id(13341348315898801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(382942118891702825)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:RP,56::'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13341797800898801)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(382942118891702825)
,p_button_name=>'Crear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar Gestion'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13345555286898804)
,p_branch_name=>'if_a_la_pagina_anterior'
,p_branch_action=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(13341797800898801)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13342158083898801)
,p_name=>'P78_NRO_MOVIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(382942118891702825)
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
 p_id=>wwv_flow_imp.id(13342522292898802)
,p_name=>'P78_ID_VISITA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(382942118891702825)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13342979249898802)
,p_name=>'P78_RESULTADO'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(382942118891702825)
,p_prompt=>'Resultado de Visita'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION, COD_VISITA from cc_estado_visita a',
'where tipo=''V'''))
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
 p_id=>wwv_flow_imp.id(13343305105898802)
,p_name=>'P78_COMENTARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(382942118891702825)
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
 p_id=>wwv_flow_imp.id(13343786915898802)
,p_name=>'P78_FINALIZAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(382942118891702825)
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
 p_id=>wwv_flow_imp.id(13344577752898803)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13345025632898803)
,p_event_id=>wwv_flow_imp.id(13344577752898803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'  begin',
'  select id ',
'    into :P78_ID_VISITA',
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
,p_attribute_03=>'P78_ID_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13344175680898803)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'inserta_seguimiento'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'BEGIN',
'UPDATE cc_visit_cast',
'SET fecha_fin_visita = sysdate,',
'observation = :P78_COMENTARIO,  motivo = :P78_RESULTADO',
' ',
'where cod_empresa=''1''',
'and id = :P78_ID_VISITA',
'AND fecha_fin_visita IS NULL;',
'END;',
'',
'',
'',
'BEGIN',
'UPDATE cc_visit_cast@dblink_CPH',
'SET fecha_fin_visita = sysdate,',
'observation = :P78_COMENTARIO,  motivo = :P78_RESULTADO',
' ',
'where cod_empresa=''1''',
'and id = :P78_ID_VISITA',
'AND fecha_fin_visita IS NULL;',
'END;',
'',
'END;',
'',
'begin',
'BEGIN',
'UPDATE cc_gestiones_visitas',
'SET REALIZADO = :P78_FINALIZAR,',
'COMENTARIO_RESULTADO = :P78_COMENTARIO,  COD_RESULTADO = :P78_RESULTADO',
' ',
'where cod_empresa=''1''',
'and nro_movimiento = :P78_NRO_MOVIMIENTO;',
'END;',
'BEGIN',
'',
'INSERT INTO cc_seguimiento_cobranza(COD_EMPRESA, ',
'                                       comentario, nro_movimiento,',
'                       COD_USUARIO, FECHA )',
'     VALUES (''1'', ',
'              CASE WHEN :P78_FINALIZAR =''S'' THEN',
'                                        ''Finalizado '' ',
'                                        WHEN :P78_FINALIZAR=''N'' THEN',
'                                        ''Cancelado '' ',
'                                        WHEN :P78_FINALIZAR =''P'' THEN',
'                                        ''Pendiente '' ',
'                                        end ||:P78_COMENTARIO, :P78_NRO_MOVIMIENTO, nvl(htmldb_application.g_user,user), ',
'     SYSTIMESTAMP) ;',
'end;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(13341797800898801)
,p_process_success_message=>'Visita Finalizada'
);
wwv_flow_imp.component_end;
end;
/
