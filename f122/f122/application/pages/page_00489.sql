prompt --application/pages/page_00489
begin
--   Manifest
--     PAGE: 00489
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
 p_id=>489
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Marcacion de Visitas'
,p_alias=>'MARCACION-DE-VISITAS'
,p_step_title=>'Marcacion de Visitas'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Badge.apex-cal-default { background-color: #2578CF; border-color: #2578CF; color: #FFFFFF; }',
'.t-Badge.apex-cal-black { background-color: #303030; border-color: #303030; color: #FFFFFF; }',
'.t-Badge.apex-cal-blue { background-color: #4183D7; border-color: #4183D7; color: #FFFFFF; }',
'.t-Badge.apex-cal-bluesky { background-color: #6BB9F0; border-color: #6BB9F0; color: #FFFFFF; }',
'.t-Badge.apex-cal-brown { background-color: #D88935; border-color: #D88935; color: #FFFFFF; }',
'.t-Badge.apex-cal-cyan { background-color: #1ABC9C; border-color: #1ABC9C; color: #404040; }',
'.t-Badge.apex-cal-darkblue { background-color: #1F5F97; border-color: #1F5F97; color: #FFFFFF; }',
'.t-Badge.apex-cal-gray { background-color: #A0A0A0; border-color: #A0A0A0; color: #404040; }',
'.t-Badge.apex-cal-green { background-color: #2ECC71; border-color: #2ECC71; color: #FFFFFF; }',
'.t-Badge.apex-cal-lime { background-color: #28A346; border-color: #28A346; color: #FFFFFF; }',
'.t-Badge.apex-cal-orange { background-color: #F39C12; border-color: #F39C12; color: #FFFFFF; }',
'.t-Badge.apex-cal-red { background-color: #D91E18; border-color: #D91E18; color: #FFFFFF; }',
'.t-Badge.apex-cal-silver { background-color: #BDC3C7; border-color: #BDC3C7; color: #404040; }',
'.t-Badge.apex-cal-white { background-color: #F0F0F0; border-color: #F0F0F0; color: #404040; }',
'.t-Badge.apex-cal-yellow { background-color: #F1C40F; border-color: #F1C40F; color: #404040; }'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20230413115955'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(297892077578931655)
,p_plug_name=>'Visitas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(145207137116720077)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(297892077578931655)
,p_button_name=>'iniciar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Iniciar Visita'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:RP,83::'
,p_icon_css_classes=>'fa-map-pin'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(145207545030720076)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(297892077578931655)
,p_button_name=>'Finalizar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar Visita'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(145210974044720069)
,p_branch_action=>'f?p=&APP_ID.:1000:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'eba_ca_fw.get_preference_value(''FIRST_RUN'') = ''YES'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(145210531073720069)
,p_branch_name=>'go_51'
,p_branch_action=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:RP,84:P84_NRO_MOVIMIENTO:&P489_ID_VISITA.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(145207545030720076)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138649633306528731)
,p_name=>'P489_CODIGO_VENDEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(297892077578931655)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145207995639720074)
,p_name=>'P489_NOMBRE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(297892077578931655)
,p_prompt=>'Visita Abierta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145208334240720073)
,p_name=>'P489_COD_CUSTODIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(297892077578931655)
,p_item_default=>':P0_COD_CUSTODIO'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(145208771257720072)
,p_name=>'P489_ID_VISITA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(297892077578931655)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145209162659720071)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P489_COD_USUARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(145209506146720070)
,p_name=>'global'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(145210079576720070)
,p_event_id=>wwv_flow_imp.id(145209506146720070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'  SELECT FV.COD_VENDEDOR',
'   INTO :P489_CODIGO_VENDEDOR',
'  FROM FV_VENDEDORES FV, USUARIOS U',
'  WHERE FV.COD_EMPRESA=''1''',
'  AND FV.COD_EMPRESA=U.COD_EMPRESA',
'  AND FV.COD_PERSONA=U.COD_PERSONA',
'  AND U.COD_USUARIO = :P_COD_USUARIO',
'  AND FV.ESTADO=''A''',
'  AND ROWNUM=''1'';',
'  EXCEPTION WHEN OTHERS THEN ',
'  NULL;',
'  END;',
'  ',
'  begin',
'  select id, ''Visita Abierta NGO: ''||cc.cod_cliente||''-''||p.nombre||'' (ID VISITA:''||ID||'')''',
'    into :P489_ID_VISITA, :p489_nombre',
'  from cc_visit_cast v, cc_clientes cc, personas  p',
'  where v.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO',
'  and cc.cod_empresa=v.cod_empresa',
'  and cc.cod_cliente=v.codigo_cliente',
'  and cc.cod_persona=p.cod_persona;',
'  exception',
'  when others then',
'    :P489_ID_VISITA:= null;',
'    :p489_nombre:=null;',
'  end;',
'  ',
'  if :P489_ID_VISITA is null then',
'  begin',
'  select id, ''Visita Abierta CPH: ''||cc.cod_cliente||''-''||p.nombre||'' (ID VISITA:''||ID||'')''',
'    into :P489_ID_VISITA, :p489_nombre',
'  from cc_visit_cast@dblink_cph v, cc_clientes@dblink_cph cc, personas@dblink_cph  p',
'  where v.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO',
'  and cc.cod_empresa=v.cod_empresa',
'  and cc.cod_cliente=v.codigo_cliente',
'  and cc.cod_persona=p.cod_persona;',
'  exception',
'  when others then',
'    :P489_ID_VISITA:= null;',
'    :p489_nombre:=null;',
'  end;',
'  end if;'))
,p_attribute_02=>'P0_COD_CUSTODIO'
,p_attribute_03=>'P489_ID_VISITA,P489_NOMBRE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
