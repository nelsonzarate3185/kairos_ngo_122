prompt --application/pages/page_00063
begin
--   Manifest
--     PAGE: 00063
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
 p_id=>63
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Confirma Entrega'
,p_alias=>'CONFIRMA-ENTREGA'
,p_page_mode=>'MODAL'
,p_step_title=>'Confirma Entrega'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'',
'function myerror() {',
'    var myval = apex.item(''P89_ERR'').getValue();',
'',
'    if (myval != '''') {',
'        document.getElementById(''P89_NRO_COMPROBANTE'').focus();',
'        apex.message.clearErrors();',
'        apex.message.showErrors(',
'            [{',
'                "type": "error",',
'                "location": "page",',
'                "message": myval',
'            }]',
'        );',
'    } else{',
'        apex.message.clearErrors();',
'    }',
'    ',
'',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: yellow !important;',
'   border-color: red !important;',
'}'))
,p_page_css_classes=>'CSS_CLASS'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250217165243'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208801711532924448)
,p_plug_name=>'Confirma Entrega'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(208809129210924460)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12837641405543316)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(208809129210924460)
,p_button_name=>'CONFIRMAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12838037055543316)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(208809129210924460)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12829736290543313)
,p_name=>'P63_NRO_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12830199279543313)
,p_name=>'P63_SER_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12830572924543313)
,p_name=>'P63_PARAM_ID_SOLICITUD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12830999435543313)
,p_name=>'P63_COD_USUARIO_PED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12831312874543313)
,p_name=>'P63_COD_PROVEEDOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12831711006543314)
,p_name=>'P63_COD_ARTICULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Codigo articulo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12832152475543314)
,p_name=>'P63_DESCRIPCION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12832541782543314)
,p_name=>'P63_GARANTIA_OT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Garantia Ot'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12832971938543314)
,p_name=>'P63_POSICION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Posicion'
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
 p_id=>wwv_flow_imp.id(12833328324543314)
,p_name=>'P63_FEC_ALTA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Fec Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12833736075543314)
,p_name=>'P63_HORA_ALTA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Hora Alta'
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
 p_id=>wwv_flow_imp.id(12834106980543314)
,p_name=>'P63_TIPO_SOLICITUD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Tipo Solicitud'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12834526366543315)
,p_name=>'P63_PROVEEDOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12834979337543315)
,p_name=>'P63_CONDICION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Condicion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12835388326543315)
,p_name=>'P63_PARAM_SER_OT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Serie OT'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12835732386543315)
,p_name=>'P63_PARAM_NRO_OT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Numero OT '
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
 p_id=>wwv_flow_imp.id(12836192612543315)
,p_name=>'P63_COMENTARIO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(12836566732543315)
,p_name=>'P63_UBICACION_DESTINO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_prompt=>'Ubicacion Destino'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.posicion, p.posicion x',
'from ca_ubic_tecnicos t ,ca_ubic_productos p',
'where t.cod_empresa = ''1''',
'and t.piso = p.piso ',
'and t.cod_proveedor = :P63_COD_PROVEEDOR',
'and :p63_tipo_solicitud =''SOLICITUD TECNICO''',
'and (p.nro_comprobante is null or p.nro_comprobante_2 is null or p.nro_comprobante_3 is null or p.nro_comprobante_4 is null or p.nro_comprobante_5 is null ) ',
'',
'UNION ALL',
'select p.posicion, p.posicion x',
'from ca_ubic_productos p',
'where p.cod_empresa = ''1''',
'and :p63_tipo_solicitud IN ( ''INGRESO SALON'', ''ENTREGA TECNICO'',''SNC'') ',
'and (p.nro_comprobante is null or p.nro_comprobante_2 is null or p.nro_comprobante_3 is null or p.nro_comprobante_4 is null or p.nro_comprobante_5 is null ) ',
'union all ',
'select null , null',
'from dual ',
'where  :p63_tipo_solicitud IN ( ''SOLICITUD CAJA'') '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12836989948543316)
,p_name=>'P63_ERR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(208801711532924448)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12838524744543317)
,p_validation_name=>'TALLER_TECNICO'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P63_TIPO_SOLICITUD <>''SOLICITUD CAJA'' AND :P63_UBICACION_DESTINO IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Es Obligatorio asignar una ubicaci\00F3n de destino.')
,p_when_button_pressed=>wwv_flow_imp.id(12837641405543316)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12839637257543318)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12838037055543316)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12840199239543318)
,p_event_id=>wwv_flow_imp.id(12839637257543318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12840574564543318)
,p_name=>'Carga_datos'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12841099388543318)
,p_event_id=>wwv_flow_imp.id(12840574564543318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'            select ',
'                cc.ser_comprobante, ',
'                cc.nro_comprobante, ',
'                a.cod_articulo,',
'                A.DESCRIPCION, ',
'                fnc_posicion_ot(cc.cod_empresa, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante)POSICION ,',
'                O.GARANTIA_OT, ',
'                CC.COD_USUARIO_PED,',
'                CC.FEC_ALTA, ',
'                CC.HORA_ALTA,',
'                CASE WHEN NVL(O.IND_SNC,''N'') = ''S'' THEN ',
'                    ''SNC''',
'                ELSE ',
'                    CASE WHEN CC.tipo=''E'' AND CC.COD_GRUPO in (''TECNIC'',''TCNPV'') THEN ',
'                        ''ENTREGA TECNICO''',
'                    ELSE ',
'                        CASE WHEN CC.COD_GRUPO in (''TECNIC'',''TCNPV'')  THEN ',
'                            ''SOLICITUD TECNICO''',
'                         ELSE ',
'                            CASE WHEN CC.tipo=''E'' THEN ',
'                                ''INGRESO SALON''',
'                             ELSE ',
'                                ''SOLICITUD CAJA''',
'                            END',
'                        END ',
'                    END ',
'                END TIPO_SOLICITUD,',
'                e.nombre, ',
'                 o.condicion',
'',
'            INTO',
'             :P63_SER_COMPROBANTE, ',
'             :P63_NRO_COMPROBANTE,',
'             :P63_COD_ARTICULO,',
'             :P63_DESCRIPCION,',
'             :P63_POSICION,',
'             :P63_GARANTIA_OT,',
'             :P63_COD_USUARIO_PED,',
'             :P63_FEC_ALTA,',
'             :P63_HORA_ALTA,',
'             :P63_TIPO_SOLICITUD,',
'             :P63_PROVEEDOR,',
'             :P63_CONDICION',
'',
'            from CA_SOLICITUD_OT cc, ST_ARTICULOS A, VT_ORDENES_TRABAJO O, CM_PROVEEDORES P, PERSONAS E',
'            where CC.cod_empresa = :P_COD_EMPRESA',
'            AND NVL(CC.ESTADO,''N'')=''P''',
'            AND CC.NRO_COMPROBANTE  IN (select nro_comprobante ',
'                                    from vt_ordenes_trabajo A',
'                                    where A.cod_empresa=  ''1''',
'                                    and A.tip_comprobante=CC.tip_comprobante',
'                                    and A.ser_comprobante=CC.ser_comprobante',
'                                    and A.nro_comprobante=CC.nro_comprobante',
'                                    AND NVL(A.ANULADO,''N'')<>''S''',
'                                    --AND nvl(nvl(a.ind_entrega,''N''),NVL(A.IND_RETIRADO,''N''))<>''S''',
'                                    )',
'            AND A.COD_EMPRESA(+) = CC.COD_EMPRESA',
'            AND A.COD_ARTICULO(+) = o.cod_articulo',
'            AND O.COD_EMPRESA = CC.COD_EMPRESA',
'            AND O.TIP_COMPROBANTE= CC.TIP_COMPROBANTE',
'            AND O.SER_COMPROBANTE = CC.SER_COMPROBANTE ',
'            AND O.NRO_COMPROBANTE = CC.NRO_COMPROBANTE ',
'            AND P.COD_EMPRESA = CC.COD_EMPRESA',
'            AND P.COD_PROVEEDOR = O.COD_PROVEEDOR',
'            AND P.COD_PERSONA = E.COD_PERSONA ',
'            AND O.nro_COMPROBANTE= :P63_PARAM_NRO_OT',
'            AND O.SER_COMPROBANTE = :P63_PARAM_SER_OT',
'            AND CC.ID_SOLICITUD = :P63_PARAM_ID_SOLICITUD;',
'    exception',
'        when others then     ',
'            null;',
'        END;',
''))
,p_attribute_02=>'P63_PARAM_NRO_OT,P63_PARAM_SER_OT'
,p_attribute_03=>'P63_SER_COMPROBANTE,P63_NRO_COMPROBANTE,P63_COD_ARTICULO,P63_DESCRIPCION,P63_POSICION,P63_GARANTIA_OT,P63_COD_USUARIO_PED,P63_FEC_ALTA,P63_HORA_ALTA,P63_TIPO_SOLICITUD,P63_PROVEEDOR,P63_NRO_COMPROBANTE,P63_COD_ARTICULO,P63_DESCRIPCION,P63_POSICION,P6'
||'3_GARANTIA_OT,P63_COD_USUARIO_PED,P63_FEC_ALTA,P63_HORA_ALTA,P63_TIPO_SOLICITUD,P63_PROVEEDOR,P63_CONDICION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12841448772543318)
,p_name=>'valida_ubicacion'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P63_UBICACION_DESTINO_ESC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12841972907543318)
,p_event_id=>wwv_flow_imp.id(12841448772543318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    :P63_ERR := null;',
'     SELECT U.POSICION',
'     INTO :P63_OBSERVACIONES',
'     FROM CA_UBIC_PRODUCTOS U',
'     WHERE COD_EMPRESA = :P_COD_EMPRESA--''1''',
'     AND U.POSICION = :P63_POSICION_DESTINO;',
'    :P63_ERR := null;',
'    exception ',
'     when others then ',
'     :P63_ERR := ''Posicion: ''||:P63_POSICION_DESTINO||'' seleccionada no valida para reubicacion. ''||SQLERRM; ',
'     :P63_POSICION_DESTINO := null;       ',
'end;  ',
'',
''))
,p_attribute_02=>'P102_POSICION_DESTINO'
,p_attribute_03=>'P102_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12842329289543319)
,p_name=>'disable_ubicacion_destino'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P63_TIPO_SOLICITUD'
,p_condition_element=>'P63_TIPO_SOLICITUD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SOLICITUD CAJA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12842844285543319)
,p_event_id=>wwv_flow_imp.id(12842329289543319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P63_UBICACION_DESTINO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12838863401543317)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Confirma Solicitud'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'  VRESULTADO VARCHAR2(80); ',
'  vregid NUMBER; ',
'BEGIN ',
'    :P63_ERR := NULL; ',
'    if :P63_UBICACION_DESTINO IS NOT NULL THEN ',
'        BEGIN',
'            sp_reubica_ot_appnew(   :P63_NRO_COMPROBANTE,',
'                                    :P63_UBICACION_DESTINO,',
'                                    :APP_USER,',
'                                    :P63_COMENTARIO,',
'                                    VRESULTADO,',
'                                    :P63_SER_COMPROBANTE',
'                                   );',
'                if vresultado <>  ''1'' then ',
'                 :P63_ERR := ''ERROR EN REUBICA OT APP''||SQLERRM; ',
'                else ',
'                    INSERTA_SEGUIMIENTO_OT (:P_COD_EMPRESA,',
'                                    :P63_TIPO_SOLICITUD ||''  ''||'' Confirmado'',',
'                                    NULL,',
'                                    :P63_SER_COMPROBANTE,',
'                                    :P63_NRO_COMPROBANTE,',
'                                    :APP_USER,',
'                                    NULL,',
'                                    ''Ordenes Solicitadas'');',
'                    BEGIN ',
'                        UPDATE CA_SOLICITUD_OT  F',
'                        SET F.OBSERVACION=:P63_COMENTARIO,',
'                            F.ESTADO = ''S'',',
'                            f.cod_usuario_proc = :APP_USER,',
'                            f.fec_proceso = sysdate ,',
'                            f.hora_proceso = to_char( sysdate , ''hh24:mm:ss'')',
'                        WHERE F.COD_EMPRESA  = :P_COD_EMPRESA',
'                        AND F.SER_COMPROBANTE = :P63_SER_COMPROBANTE',
'                        AND F.NRO_COMPROBANTE = :P63_NRO_COMPROBANTE',
'                        AND F.ID_SOLICITUD = :P63_PARAM_ID_SOLICITUD',
'                        AND NVL(F.ESTADO,''P'') <> ''S''; ',
'                        commit;',
'                    END;',
'                    begin',
'                    select count(a.nro_comprobante)',
'                        into vregid',
'                        from ca_auditoria_ubicacion a',
'                    where cod_empresa = :P_COD_EMPRESA',
'                        and a.tip_comprobante = ''ORT''',
'                        AND A.SER_COMPROBANTE =  :P63_SER_COMPROBANTE',
'                        AND A.NRO_COMPROBANTE = :P63_NRO_COMPROBANTE;',
'                    exception',
'                    when others then',
'                        vregid := 1;',
'                    end;',
'                    vregid := nvl(vregid, 0) + 1;',
'                    begin',
'                        insert into ca_auditoria_ubicacion',
'                            (cod_empresa,',
'                            tipo,',
'                            fec_alta,',
'                            hora_alta,',
'                            cod_usuario,',
'                            reg_id,',
'                            tip_comprobante,',
'                            ser_comprobante,',
'                            nro_comprobante,',
'                            posicion,',
'                            COD_EMPLEADO,',
'                            seguimiento, objeto)',
'                        values',
'                        (:P_COD_EMPRESA,',
'                        ''CONFIRMA'',',
'                        SYSDATE,',
'                        TO_CHAR(SYSDATE, ''HH24:MI:SS''),',
'                        :P_COD_USUARIO,',
'                        VREGID,',
'                        ''ORT'',',
'                        :P63_SER_COMPROBANTE,',
'                        :P63_NRO_COMPROBANTE,',
'                        nvl( :P63_UBICACION_DESTINO,''SIN UBICACION'') ,',
'                        :P_COD_EMPLEADO,',
'                        :P63_COMENTARIO,''PROCESADO'');',
'                    exception',
'                    when others then',
'                        raise_application_error(-20111,''ERROR EN REUBICA OT APP''||SQLERRM); ',
'                    end;',
'',
'                end if ; ',
'        EXCEPTION ',
'        WHEN OTHERS THEN ',
'         raise_application_error(-20111,''ERROR EN REUBICA OT APP''||SQLERRM); ',
'        END; ',
'    else ',
'        BEGIN',
'            BEGIN ',
'                UPDATE CA_SOLICITUD_OT  F',
'                SET F.OBSERVACION=:P63_COMENTARIO,',
'                F.ESTADO = ''S'',',
'                f.cod_usuario_proc = :APP_USER,',
'                f.fec_proceso = sysdate ,',
'                f.hora_proceso = to_char( sysdate , ''hh24:mm:ss'')',
'                WHERE F.COD_EMPRESA  = :P_COD_EMPRESA',
'                AND F.SER_COMPROBANTE = :P63_SER_COMPROBANTE',
'                AND F.NRO_COMPROBANTE = :P63_NRO_COMPROBANTE',
'                AND F.ID_SOLICITUD = :P63_PARAM_ID_SOLICITUD',
'                AND NVL(F.ESTADO,''P'') <> ''S''; ',
'            END;',
'            begin',
'            select count(a.nro_comprobante)',
'                into vregid',
'                from ca_auditoria_ubicacion a',
'            where cod_empresa = :P_COD_EMPRESA',
'                and a.tip_comprobante = ''ORT''',
'                AND A.SER_COMPROBANTE =  :P63_SER_COMPROBANTE',
'                AND A.NRO_COMPROBANTE = :P63_NRO_COMPROBANTE;',
'            exception',
'            when others then',
'                vregid := 1;',
'            end;',
'            vregid := nvl(vregid, 0) + 1;',
'            begin',
'            insert into ca_auditoria_ubicacion',
'                (cod_empresa,',
'                tipo,',
'                fec_alta,',
'                hora_alta,',
'                cod_usuario,',
'                reg_id,',
'                tip_comprobante,',
'                ser_comprobante,',
'                nro_comprobante,',
'                posicion,',
'                COD_EMPLEADO,',
'                seguimiento, OBJETO)',
'            values',
'                (:P_COD_EMPRESA,',
'                ''CONFIRMA'',',
'                SYSDATE,',
'                TO_CHAR(SYSDATE, ''HH24:MI:SS''),',
'                :APP_USER,',
'                VREGID,',
'                ''ORT'',',
'                :P63_SER_COMPROBANTE,',
'                :P63_NRO_COMPROBANTE,',
'                ''SIN UBICACION'',',
'                :P_COD_EMPLEADO,',
'                :P63_COMENTARIO,''PROCESADO'');',
'',
'            exception',
'            when others then',
'                out_out(''ERROR EN REUBICA OT APP''||SQLERRM);',
'                raise_application_error(-20111,''ERROR EN REUBICA OT APP''||SQLERRM); ',
'            end;',
'            INSERTA_SEGUIMIENTO_OT (    :P_COD_EMPRESA,',
'                                        :P63_TIPO_SOLICITUD ||''  ''||'' Confirmado'',',
'                                        NULL,',
'                                        :P63_SER_COMPROBANTE,',
'                                        :P63_NRO_COMPROBANTE,',
'                                        :APP_USER,',
'                                        NULL,',
'                                        ''Ordenes Solicitadas'');',
'',
'',
'',
'        begin',
'              UPDATE CA_UBIC_PRODUCTOS a',
'                     SET ',
'                        A.NRO_COMPROBANTE = CASE WHEN A.NRO_COMPROBANTE = :P63_NRO_COMPROBANTE  THEN NULL ELSE A.NRO_COMPROBANTE END,',
'                        A.NRO_COMPROBANTE_2 = CASE WHEN A.NRO_COMPROBANTE_2 = :P63_NRO_COMPROBANTE THEN NULL ELSE A.NRO_COMPROBANTE_2 END,',
'                        A.NRO_COMPROBANTE_3 = CASE WHEN A.NRO_COMPROBANTE_3 = :P63_NRO_COMPROBANTE THEN NULL ELSE A.NRO_COMPROBANTE_3 END,',
'                        A.NRO_COMPROBANTE_4 = CASE WHEN A.NRO_COMPROBANTE_4 = :P63_NRO_COMPROBANTE THEN NULL ELSE A.NRO_COMPROBANTE_4 END,',
'                        A.NRO_COMPROBANTE_5 = CASE WHEN A.NRO_COMPROBANTE_5 = :P63_NRO_COMPROBANTE THEN NULL ELSE A.NRO_COMPROBANTE_5 END,',
'                        A.observacion = ''limpiar posicion de: ''||:P63_SER_COMPROBANTE||''-''||:P63_NRO_COMPROBANTE',
'                   WHERE COD_EMPRESA = :P_COD_EMPRESA  ',
'                     AND TIP_COMPROBANTE = ''ORT''',
'                     --AND SER_COMPROBANTE = :P63_SER_COMPROBANTE',
'                     AND (NRO_COMPROBANTE = :P63_NRO_COMPROBANTE OR',
'                         NRO_COMPROBANTE_2 = :P63_NRO_COMPROBANTE OR',
'                         NRO_COMPROBANTE_3 = :P63_NRO_COMPROBANTE OR',
'                         NRO_COMPROBANTE_4 = :P63_NRO_COMPROBANTE OR',
'                         NRO_COMPROBANTE_5 = :P63_NRO_COMPROBANTE)',
'                     AND EXISTS (SELECT DISTINCT ''1''',
'                                   FROM VT_ORDENES_TRABAJO OT',
'                                   WHERE OT.COD_EMPRESA= :P_COD_EMPRESA  ',
'                                   AND   OT.TIP_COMPROBANTE = ''ORT''',
'                                   AND   OT.SER_COMPROBANTE = :P63_SER_COMPROBANTE',
'                                   AND   OT.NRO_COMPROBANTE = :P63_NRO_COMPROBANTE',
'                                   --AND ( nvl(OT.IND_RETIRADO, ''N'') = ''S'' OR nvl(OT.IND_ENTREGA, ''N'') = ''S'')',
'                                   );',
'            out_out(''a-borro correctamente posicion: ''||:P63_SER_COMPROBANTE||''-''||:P63_NRO_COMPROBANTE);',
'            COMMIT;',
'        exception',
'            when others then',
'                null;',
'                out_out(''fallo borro correctamente posicion: ''||:P63_NRO_COMPROBANTE);',
'        end;',
'        exception ',
'            when others then ',
'            out_out(''ERROR AL CONFRMAR OT APP''||SQLERRM);',
'            :P63_ERR := ''ERROR AL CONFRMAR OT APP''||SQLERRM;',
'            raise_application_error(-20111,''ERROR EN REUBICA OT APP''||SQLERRM); ',
'        end; ',
'        commit;',
'    END IF; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12837641405543316)
,p_process_success_message=>'Solicitud Confirmada'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12839270614543317)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE DIALOG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
