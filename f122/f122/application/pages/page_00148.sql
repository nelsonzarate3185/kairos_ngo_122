prompt --application/pages/page_00148
begin
--   Manifest
--     PAGE: 00148
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
 p_id=>148
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ticket Atencion'
,p_alias=>'TICKET-ATENCION'
,p_page_mode=>'MODAL'
,p_step_title=>'Ticket Atencion'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#inputmask.js ',
'#APP_FILES#util_generico#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getLocation() {',
'var x=document.getElementById("geoError");',
'if (navigator.geolocation) {',
'navigator.geolocation.getCurrentPosition(',
' function setPosition(position) {',
'// x.innerHTML="setPosition:"+position.coords.latitude;',
' $s("P148_LATITUDE" , position.coords.latitude);',
'$s("P148_LONGITUDE", position.coords.longitude);',
' }',
',function (error)',
'{',
'switch(error.code) ',
'{',
'case error.PERMISSION_DENIED:',
'x.innerHTML="User denied the request for Geolocation."',
'break;',
'case error.POSITION_UNAVAILABLE:',
'x.innerHTML="Location information is unavailable."',
'break;',
'case error.TIMEOUT:',
'x.innerHTML="The request to get user location timed out."',
'break;',
'case error.UNKNOWN_ERROR:',
'x.innerHTML="An unknown error occurred."',
'break;',
'}',
'}    ',
',{timeout:10000});',
'x.innerHTML="Success";',
'}',
'else',
'x.innerHTML="Geolocation is not supported by this browser.";',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#map {',
' height: 100%;',
'}',
'#mapp .t-Region-body {',
' height: 600px !important;',
'}',
'',
'/*',
'.t-Dialog  ',
'{background-color: #8BC6EC;',
'background-image: linear-gradient(180deg, #8BC6EC 0%, #25286f 100%);',
'}',
'',
'.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar {',
'    background-color: #8BC6EC;',
'background-image: linear-gradient(180deg, #25286f  0%, #8BC6EC 100%);',
'}',
'*/',
'#reg_gen_tkt  { background: #003A85;',
'    border-color: rgba(255, 255, 0, 0.397);',
'     /* box-shadow: rgba(255, 255, 0, 0.548) 1px 1px 5px 1px;} */',
'}',
'.t-Dialog  ',
'{    background-color: rgb(0, 46, 107);}',
'',
'.display_only apex-item-display-only {',
'    font-weight: bold !important; ',
'    color:darkblue !important; ',
'    border-color: yellow !important; ',
'    border-width: 1px !important; ',
'}',
'',
'',
'.u-Processing {',
'        font-size: 200% !important;',
'        background-color: darkblue !important;',
'        z-index: 1000 !important;',
'    }',
''))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1200'
,p_dialog_chained=>'N'
,p_page_component_map=>'16'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20230322165434'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222087559094897005)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<a id="geoError"></a>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222087708044897006)
,p_plug_name=>'Generar Ticket'
,p_region_name=>'reg_gen_tkt'
,p_region_template_options=>'t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22231413854089589)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_button_name=>'Derivar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Derivar'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P148_P_ID_TICKET is not null AND :P148_OPERACION in (''D'',''DC'') then',
'        RETURN TRUE;',
'        /*',
'    if :P148_P_TIPO_TKT IN (''09'',''10'',''04'') THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;*/',
'else',
'    return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-22 u-color-43-text'
,p_icon_css_classes=>'fa-external-link'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22231861565089590)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_button_name=>'Confirmar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P148_P_ID_TICKET is not null AND :P148_OPERACION IN (''U'',''DC'' )then ',
'        RETURN TRUE; ',
'else',
'    return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-22 u-color-43-text'
,p_icon_css_classes=>'fa-check-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22232273273089590)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_button_name=>'Guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P148_P_ID_TICKET'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-22 u-color-43-text'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22250502826089613)
,p_branch_name=>'Go To Page 149'
,p_branch_action=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22232273273089590)
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P148_P_TIPO_TKT in (''02'',''01'',''03'',''08'')'
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22251704746089613)
,p_branch_name=>'Go To Page 150'
,p_branch_action=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22232273273089590)
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P148_P_TIPO_TKT'
,p_branch_condition_text=>'04'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(71083481090541842)
,p_branch_name=>'Go To Page 150'
,p_branch_action=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22231413854089589)
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P148_P_TIPO_TKT'
,p_branch_condition_text=>'04'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22252154772089613)
,p_branch_name=>'Go To Page 151'
,p_branch_action=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22232273273089590)
,p_branch_sequence=>40
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P148_P_TIPO_TKT in (''10'',''09'',''07'',''05'')'
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22250913606089613)
,p_branch_name=>'Go To Page 151'
,p_branch_action=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.:RR,:P151_P_TIPO_TKT:&P148_P_TIPO_TKT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22231413854089589)
,p_branch_sequence=>50
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'10,09,07,05'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22251353869089613)
,p_branch_name=>'Go To Page 151'
,p_branch_action=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.:RR,:P151_P_TIPO_TKT:&P148_P_TIPO_TKT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22231861565089590)
,p_branch_sequence=>60
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P148_P_ID_TICKET'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22232605204089592)
,p_name=>'P148_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE_TICKET'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     SELECT DISTINCT  TRIM(P.NOMBRE)  nom, C.COD_CLIENTE cod, (SELECT  Numero ',
'             ',
'         FROM   IDENT_PERSONAS IP',
'         WHERE   IP.cod_ident in (''RUC'')',
'         AND    IP.COD_PERSONA=C.COD_PERSONA',
'         and rownum=1',
'         )ruc,',
'         (SELECT  Numero              ',
'         FROM   IDENT_PERSONAS IP',
'         WHERE   IP.cod_ident in (''CI'')',
'         AND    IP.COD_PERSONA=C.COD_PERSONA',
'         and rownum=1',
'         )ci,',
'   (SELECT LISTAGG(replace(''(''||codigo_area,''5959'',''09'')||'')''||Num_telefono, ''  '') ',
'             WITHIN GROUP (ORDER BY ROWNUM) ',
'        FROM   telef_personas IP',
'         WHERE  IP.COD_PERSONA=C.COD_PERSONA',
'         )         ',
'         DATOS',
'           , C.COD_CLIENTE',
'     FROM CC_CLIENTES C',
'          ,PERSONAS P',
'     WHERE C.COD_EMPRESA=''1''',
'     AND   C.COD_PERSONA=P.COD_PERSONA',
'     AND   P.NOMBRE NOT LIKE ''%NO USAR%''',
'     AND   P.NOMBRE NOT LIKE ''--%''',
'     AND   P.NOMBRE NOT LIKE ''**%''',
'     AND   P.NOMBRE NOT LIKE ''..%''',
'     ORDER BY 1 ASC'))
,p_cSize=>30
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'NO_FETCH'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22233050421089593)
,p_name=>'P148_NCI'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'NCI/RUC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
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
 p_id=>wwv_flow_imp.id(22233405294089594)
,p_name=>'P148_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Nombre Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22233825127089594)
,p_name=>'P148_DIRECCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Direccion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22234204589089594)
,p_name=>'P148_DEPARTAMENTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Departamento'
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
 p_id=>wwv_flow_imp.id(22234684841089595)
,p_name=>'P148_CIUDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Ciudad'
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
 p_id=>wwv_flow_imp.id(22235027452089595)
,p_name=>'P148_TELEFONO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Nro Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22235483681089595)
,p_name=>'P148_RESPONSABLE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.NOMBRE,',
'       P.COD_PERSONA',
'FROM PERSONAS P',
'WHERE  ( ''GASTROST'' <> v(''APP_USER'') ',
'     AND (  P.COD_PERSONA IN (  select distinct c.cod_persona  ',
'                              from usuarios c ',
'                            )',
'          or ( :P148_P_TIPO_TKT in (''05'',''09'') and P.COD_PERSONA IN ( SELECT distinct cod_persona',
'                                                                        FROM V_STA_ZONAS a',
'                                                                        where cod_grupo=''INTERIOR'')',
'             )',
'       )',
'      )',
'  ',
'or (''GASTROST'' = v(''APP_USER'')   AND   P.cod_persona   in (''223880'',''252583'',''339458'',''366090'',''369204'',''370795''))',
'order by 1 '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'NO_FETCH'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22235898582089595)
,p_name=>'P148_FECHA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);" style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22236230733089595)
,p_name=>'P148_HORA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Hora'
,p_format_mask=>'HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value=valida_hora_1(this.value) "style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-clock-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22236650800089596)
,p_name=>'P148_NRO_BOLETA_AMARILLA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Nro Boleta Amarilla'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22237076717089596)
,p_name=>'P148_GARANTIA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Nro Garantia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22237448672089596)
,p_name=>'P148_COD_ARTICULO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>unistr('C\00F3digo Articulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ||'' ''||COD_ARTICULO||'' ''||COD_ART_CORTO NOM ,COD_ARTICULO ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=''1''',
'AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL '))
,p_cSize=>30
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'NO_FETCH'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22237881909089596)
,p_name=>'P148_DESC_ARTICULO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Descripcion Articulo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22238293611089596)
,p_name=>'P148_OBSERVACION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Observacion / Problema'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22238692155089597)
,p_name=>'P148_CONDICION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Condicion Producto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22239041013089597)
,p_name=>'P148_SER_OT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22239430632089597)
,p_name=>'P148_NRO_OT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22240168825089599)
,p_name=>'P148_OPERACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22240571969089599)
,p_name=>'P148_P_ID_TICKET'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22240905622089600)
,p_name=>'P148_P_RESPONSABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22241363812089600)
,p_name=>'P148_P_TIPO_TKT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_item_default=>'01'
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,',
'       cod_ticket',
'from INV.CA_TICKETS_TIPO t'))
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22241785806089600)
,p_name=>'P148_LATITUDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22242138917089600)
,p_name=>'P148_LONGITUDE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22242513756089601)
,p_name=>'P148_P_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123958360437528317)
,p_name=>'P148_CASO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123958479996528318)
,p_name=>'P148_CONTACTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123958943787528323)
,p_name=>'P148_BANDERA_DERIVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123959006456528324)
,p_name=>'P148_ACCION_DER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129098887669845218)
,p_name=>'P148_REFERENCIA_UBI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>unistr('Referencia Ubicaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129098903317845219)
,p_name=>'P148_COD_DISTRIBUIDOR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(222087708044897006)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DISTRIBUIDOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'        c.cod_cliente R',
'  from cc_clientes c, personas p ',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_persona = p.cod_persona',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'Seleccionar Distribuidor'
,p_cSize=>30
,p_tag_attributes=>'style="background-color:white; border-color:  yellow;  font-weight: bold; color:darkblue;"'
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
 p_id=>wwv_flow_imp.id(129100259527845232)
,p_name=>'P148_ID_DERIVACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(222087559094897005)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22244581644089607)
,p_name=>'Datos_tkt'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22245031271089608)
,p_event_id=>wwv_flow_imp.id(22244581644089607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'    IF :P148_P_ID_TICKET IS NOT NULL THEN',
'        begin',
'             ',
'                    select  cod_tipo_ticket,',
'                            nro_ort,',
'                            ser_ort,',
'                            fecha, cod_cliente, nci,',
'                            cod_pers_responsable, ',
'                            cod_articulo, garantia,',
'                            observacion,                         ',
'                            condicion_producto,',
'                            NRO_BOLETA_AMARILLA',
'                        into  ',
'                            :P148_P_TIPO_TKT, :P148_NRO_OT, :P148_SER_OT,',
'                            :P148_FECHA, :P148_COD_CLIENTE, :P148_NCI,                             ',
'                            :P148_RESPONSABLE,:P148_COD_ARTICULO, :P148_GARANTIA, :P148_OBSERVACION, :P148_CONDICION',
'                            ,:P148_NRO_BOLETA_AMARILLA',
'                        from inv.ca_ticket_atencion',
'                        where id_ticket = :P148_P_ID_TICKET ;',
'             ',
'                if :P148_NRO_OT  is not null then',
'                                begin',
'                                        select garantia_OT, COD_ARTICULO',
'                                        INTO  :P148_GARANTIA, :P148_COD_ARTICULO',
'                                        from  vt_ordenes_trabajo  ',
'                                        WHERE    COD_EMPRESA=''1''',
'                                            and   tip_COMPROBANTE=''ORT''',
'                                            AND   :P148_SER_OT=SER_COMPROBANTE',
'                                            AND   :P148_NRO_OT=NRO_COMPROBANTE',
'                                            ;',
'                                exception ',
'                                when others then',
'                                        :P148_COD_ARTICULO:= null;',
'                                end;',
'            end if;',
'',
'',
'        exception',
'            when others then',
'                    null;',
'        end;',
'    ELSE',
'        :P148_NCI:=NULL;',
'        :P148_COD_CLIENTE:=NULL;',
'        :P148_CLIENTE:=NULL;',
'        :P148_DIRECCION:=NULL;',
'        :P148_TELEFONO:=NULL;',
'        :P148_DEPARTAMENTO:=NULL;',
'        :P148_CIUDAD:=NULL;',
'        :P148_FECHA:=NULL;',
'        :P148_RESPONSABLE:=NULL;',
'        :P148_COD_ARTICULO:=NULL;',
'        :P148_DESC_ARTICULO:=NULL;',
'        :P148_GARANTIA:=NULL;',
'        :P148_OBSERVACION:=NULL;',
'        :P148_CONDICION:=null;',
'        :P148_NRO_BOLETA_AMARILLA:=null;',
'        :P148_HORA:=null;',
'',
'        BEGIN',
'                SELECT COD_PERSONA',
'                INTO :P148_RESPONSABLE',
'                FROM USUARIOS',
'                WHERE COD_USUARIO=V(''APP_USER'')',
'                ;',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'',
'    END IF;',
' '))
,p_attribute_02=>'P148_P_ID_TICKET'
,p_attribute_03=>'P148_NCI,P148_COD_CLIENTE,P148_CLIENTE,P148_DIRECCION,P148_DEPARTAMENTO,P148_CIUDAD,P148_TELEFONO,P148_RESPONSABLE,P148_FECHA,P148_GARANTIA,P148_COD_ARTICULO,P148_DESC_ARTICULO,P148_OBSERVACION,P148_SER_OT,P148_NRO_OT,P148_CONDICION,P148_NRO_BOLETA_A'
||'MARILLA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22245424432089609)
,p_name=>'habilita_campos'
,p_event_sequence=>50
,p_condition_element=>'P148_P_TIPO_TKT'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'05,07,04,09,10,11'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22245986444089609)
,p_event_id=>wwv_flow_imp.id(22245424432089609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P148_GARANTIA,P148_COD_ARTICULO,P148_DESC_ARTICULO,P148_P_TIPO_TKT,P148_CONDICION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22246442294089609)
,p_event_id=>wwv_flow_imp.id(22245424432089609)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P148_GARANTIA,P148_COD_ARTICULO,P148_DESC_ARTICULO,P148_P_TIPO_TKT,P148_CONDICION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22246803055089609)
,p_name=>'Trae_Garant'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P148_GARANTIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22247311867089610)
,p_event_id=>wwv_flow_imp.id(22246803055089609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  if :P148_GARANTIA is not null AND :P148_P_ID_TICKET IS NULL then',
'    declare ',
'            vcod varchar(30);',
'    begin',
'            select S.COD_ARTICULO ',
'            into :P148_COD_ARTICULO ',
'            from st_garantia_productos_det a,',
'                 st_articulos              s',
'                , VT_COMPROBANTES_CABECERA C            ',
'        where a.cod_empresa = ''1''',
'            and a.nro_garantia =:P148_GARANTIA',
'            and a.cod_empresa = s.cod_empresa',
'            and a.cod_articulo = s.cod_articulo',
'            AND A.COD_EMPRESA=C.COD_EMPRESA',
'            AND A.TIP_COMPROBANTE=C.TIP_COMPROBANTE',
'            AND A.SER_COMPROBANTE=C.SER_COMPROBANTE',
'            AND A.NRO_COMPROBANTE=C.NRO_COMPROBANTE',
'            AND ROWNUM=1;',
' ',
'        EXCEPTION',
'            WHEN OTHERS THEN ',
'                        :P148_COD_ARTICULO:= null;',
'            ',
'        end;',
'else',
'                :P148_COD_ARTICULO:= null;',
'            ',
'end if;'))
,p_attribute_02=>'P148_GARANTIA'
,p_attribute_03=>'P148_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22247702602089610)
,p_name=>'Trae_desc_art'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P148_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22248250989089611)
,p_event_id=>wwv_flow_imp.id(22247702602089610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P148_DESC_ARTICULO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=''1''',
'AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P148_COD_ARTICULO'))
,p_attribute_07=>'P148_COD_ARTICULO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22248637502089611)
,p_name=>'geolocalizacion'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22249131061089611)
,p_event_id=>wwv_flow_imp.id(22248637502089611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'getLocation();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22249575439089611)
,p_name=>'Carga_datos_clientes'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P148_COD_CLIENTE'
,p_condition_element=>'P148_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22250003994089612)
,p_event_id=>wwv_flow_imp.id(22249575439089611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P148_COD_CLIENTE IS NOT NULL  THEN',
'    declare',
'        vnci varchar(50);',
'    BEGIN',
'            select ',
'            nvl(P.NOMBRE,p.nomb_fantasia),',
'            -- P.DIREC_ELECTRONICA,',
'            NVL(D.DETALLE,'''')DIRECCION ',
'            ,(SELECT CI.DESCRIPCION',
'                    FROM   CIUDADES CI',
'                    WHERE CI.COD_PAIS= D.COD_PAIS',
'                    AND   CI.COD_PROVINCIA= D.COD_PROVINCIA',
'                    AND   CI.COD_CIUDAD= D.COD_CIUDAD',
'                    and rownum=1) CIUDAD ',
'                ,(SELECT DISTINCT PR.DESCRIPCION',
'                    FROM   PROVINCIAS PR',
'                    WHERE PR.COD_PAIS=D.COD_PAIS',
'                    AND   PR.COD_PROVINCIA=D.COD_PROVINCIA ',
'                    and rownum=1) DEPARTAMENTO,            ',
'                (SELECT t.codigo_area||'' - ''|| t.num_telefono',
'                    FROM   TELEF_PERSONAS t',
'                    WHERE t.cod_persona=p.cod_persona',
'                    AND   nvl(t.por_defecto,''N'')= ''S''',
'                    and rownum=1',
'                    ) TELEFONO,',
'                nvl((Select numero',
'                        from ident_personas ip',
'                        where ip.cod_ident=''CI''',
'                        and   ip.cod_persona = C.COD_PERSONA',
'                        ),(',
'                        select numero',
'                        from ident_personas ip',
'                        where ip.cod_ident=''RUC''',
'                        and   ip.cod_persona= C.COD_PERSONA',
'                        ))',
'            INTO :P148_CLIENTE,',
'                :P148_DIRECCION,',
'                :P148_CIUDAD,',
'                :P148_DEPARTAMENTO,',
'                :P148_TELEFONO,',
'                vnci',
'        FROM CC_CLIENTES C,',
'            PERSONAS P,',
'            DIREC_PERSONAS D ',
'        WHERE C.COD_EMPRESA=''1''',
'        AND   C.COD_PERSONA=P.COD_PERSONA',
'        AND   C.COD_CLIENTE=:P148_COD_CLIENTE',
'        AND   P.COD_PERSONA=D.COD_PERSONA(+)',
'        AND   D.POR_DEFECTO(+)=''S'' ',
'        ;',
'             :P148_NCI:=Vnci ; ',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN ',
'         :P148_CLIENTE:=NULL;',
'         :P148_DIRECCION:=NULL;',
'         :P148_CIUDAD:=NULL;',
'         :P148_DEPARTAMENTO:=NULL;',
'         :P148_TELEFONO:=NULL; ',
'   END ;',
' ELSE',
'  ',
'         :P148_CLIENTE:=NULL;',
'         :P148_DIRECCION:=NULL;',
'         :P148_CIUDAD:=NULL;',
'         :P148_DEPARTAMENTO:=NULL;',
'         :P148_TELEFONO:=NULL; ',
'',
'',
'END IF;',
'',
''))
,p_attribute_02=>'P148_COD_CLIENTE'
,p_attribute_03=>'P148_NCI,P148_CLIENTE,P148_DIRECCION,P148_DEPARTAMENTO,P148_CIUDAD,P148_TELEFONO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71082769636541835)
,p_name=>'da_click_spinner'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#B22232273273089590,#B22231413854089589'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71082853116541836)
,p_event_id=>wwv_flow_imp.id(71082769636541835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
'//remover spinner',
'$("#apex_wait_overlay").remove();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71082935826541837)
,p_name=>'SI_SALTA_ERR'
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("span#APEX_ERROR_MESSAGE").hasClass("apex-page-error u-hidden")',
'//apex-page-error u-visible'))
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71083348118541841)
,p_event_id=>wwv_flow_imp.id(71082935826541837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".u-Processing").remove();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22243328169089605)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'crea_tkt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P148_COD_CLIENTE IS NOT NULL AND',
'   :P148_NCI IS NOT NULL AND',
'   :P148_FECHA IS NOT NULL AND',
'   :P148_RESPONSABLE IS NOT NULL THEN',
'',
'              inv.catickets.crea_ticket(pi_cod_empresa => :p_cod_empresa,',
'                                        pi_tipo_ticket => :P148_P_TIPO_TKT,',
'                                        pi_fecha => :P148_FECHA,',
'                                        pi_cod_cliente => :P148_cod_cliente,',
'                                        pi_nci => :P148_nci,',
'                                        pi_responsable => :P148_RESPONSABLE,',
'                                        pi_nro_boleta_amarilla => :P148_nro_boleta_amarilla,',
'                                        pi_nro_ticket_ref => :P148_P_ID_TICKET,',
'                                        pi_cod_usuario => :APP_USER,',
'                                        pi_cod_articulo => :P148_COD_ARTICULO,',
'                                        pi_garantia => :P148_GARANTIA,',
'                                        pi_observacion => :P148_observacion,',
'                                        pi_hora => :P148_hora,',
'                                        pi_condicion => :P148_CONDICION,',
'                                        pi_latitude => :P148_LATITUDE,',
'                                        pi_longitude => :P148_LONGITUDE,',
'                                        PI_TELEFONO_CLI       => :P148_TELEFONO,',
'                                        PI_DIRECCION_CLI      => :P148_DIRECCION,',
'                                        PI_REFERENCIA_UBI_CLI => :P148_REFERENCIA_UBI,',
'                                        PI_COD_DISTRIBUIDOR   => :P148_COD_DISTRIBUIDOR,',
'                                        PI_ART_DESC           => :P148_DESC_ARTICULO,',
'                                        PI_ID_CASO            => :P148_CASO,',
'                                        PI_ID_CONTACTO        => :P148_CONTACTO,',
'                                        PI_ID_DERIVACION      => :P148_ID_DERIVACION);',
'',
'',
'                         ',
' /*',
'            declare',
'                vnro_ticket number;',
'                vSER_ticket VARCHAR2(5);',
'            begin',
'                            begin',
'                                    SELECT SERIE',
'                                    INTO vSER_ticket',
'                                    FROM CA_TICKETS_TIPO',
'                                    WHERE COD_EMPRESA=''1''',
'                                    AND COD_TICKET = :P148_P_TIPO_TkT',
'                                    ;',
'',
'                                    select NVL(MAX(nro_ticket),0) +1',
'                                    INTO vnro_ticket',
'                                    from ca_ticket_atencion A                    ',
'                                    WHERE A.cod_empresa=''1'' ',
'                                    AND   A.SER_TICKET=  vSER_ticket',
'                                    AND   A.COD_TIPO_TICKET= :P148_P_TIPO_TkT',
'                                    ;',
'',
'                            exception',
'                                when others then',
'                                    vnro_ticket:=1;',
'                            end;',
'',
'                                BEGIN',
'                                insert into ca_ticket_atencion',
'                                    (cod_empresa, nro_ticket, ser_ticket, cod_tipo_ticket, ',
'                                    fecha, cod_cliente, nci, cod_pers_responsable, NRO_BOLETA_AMARILLA,',
'                                    nro_ticket_ref, fecha_alta, cod_usuario,COD_ARTICULO,GARANTIA,OBSERVACION',
'                                    ,hora_atencion,CONDICION_PRODUCTO, LATITUDE_1,LONGITUDE_1 ,FEC_UBI_1)',
'                                    values',
'                                    (''1'', vnro_ticket, vser_ticket, :P148_P_TIPO_TkT,:P148_FECHA,',
'                                    :P148_COD_CLIENTE, :P148_NCI, :P148_RESPONSABLE,:P148_NRO_BOLETA_AMARILLA, :P148_P_ID_TICKET,',
'                                    SYSDATE, v(''app_user'') ,:P148_COD_ARTICULO,:P148_GARANTIA,:P148_OBSERVACION,:P148_HORA',
'                                    ,:P148_CONDICION,REPLACE(:P148_LATITUDE,''.'','',''),  REPLACE(:P148_LONGITUDE,''.'','',''),sysdate );             ',
'                                ',
'                                apex_application.g_print_success_message := ''<span class="notification"> Nro: ''||Vnro_ticket||''  -  </span>'';',
'',
'',
'                            :P148_NCI:=NULL;',
'                            :P148_COD_CLIENTE:=NULL;',
'                            :P148_CLIENTE:=NULL;',
'                            :P148_DIRECCION:=NULL;',
'                            :P148_CIUDAD:=NULL;',
'                            :P148_DEPARTAMENTO:=NULL;',
'                            :P148_TELEFONO:=NULL;',
'                            :P148_FECHA:=null;',
'                            :P148_RESPONSABLE:=null;',
'                            :P148_NRO_BOLETA_AMARILLA:=null;',
'',
'',
'                            exception',
'                                when others then',
'                                    apex_error.add_error (p_message => SQLERRM,',
'                                                p_display_location      => apex_error.c_inline_in_notification',
'                                                );',
'                            end;',
'',
'            end;',
'            */',
' ',
'ELSE',
'',
'       apex_error.add_error (p_message               => ''Debe cargar correctamente los datos'',',
'                             p_display_location      => apex_error.c_inline_in_notification',
'                            );',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido Generar el Ticket'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22232273273089590)
,p_process_when=>'P148_P_ID_TICKET'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22243772877089606)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Confirma_tkt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P148_P_ID_TICKET IS NOT NULL THEN',
'        ',
'                                ',
'                              begin ',
'',
'                                    IF :P148_P_TIPO_TKT IN (''09'',''10'') THEN /* SI ES ENTREGA, DA DE BAJA EL TICKET*/',
'                                        update inv.ca_ticket_atencion',
'                                            set fecha_cierre = sysdate,',
'                                                user_cierre =  v(''app_user''),                                            ',
'                                                LATITUDE_2	= decode(LATITUDE_2,null,decode(LATITUDE_1,null,null,replace(:P148_LATITUDE,''.'','','') ),LATITUDE_2),',
'                                                LONGITUDE_2	= decode(LONGITUDE_2,null,decode(LONGITUDE_1,null,null,replace(:P148_LONGITUDE,''.'','','') ) ,LONGITUDE_2),',
'                                                FEC_UBI_2	= decode(FEC_UBI_2,null,decode(FEC_UBI_1,null,null,sysdate) ,FEC_UBI_2)   ',
'                                            where id_ticket = :P148_P_ID_TICKET;',
'                                        COMMIT;',
'                                    ELSE',
'                                        update inv.ca_ticket_atencion',
'                                            set     LATITUDE_1	=  replace(:P148_LATITUDE,''.'','','') , ',
'                                                    LONGITUDE_1	=  replace(:P148_LONGITUDE,''.'','',''),',
'                                                    FEC_UBI_1	=  sysdate   , ',
'                                                    cod_articulo = :P148_COD_ARTICULO, ',
'                                                    garantia    = :P148_GARANTIA,',
'                                                    observacion = :P148_OBSERVACION,                         ',
'                                                    condicion_producto = :P148_CONDICION,',
'                                                    NRO_BOLETA_AMARILLA = :P148_NRO_BOLETA_AMARILLA                                             ',
'                                            where id_ticket = :P148_P_ID_TICKET; ',
'                                            COMMIT;',
'                                    END IF;        ',
'',
'                            apex_application.g_print_success_message := ''<span class="notification"> Nro: ''|| :P148_P_ID_TICKET||''  -  </span>'';',
'                            :P148_NCI:=NULL;',
'                            :P148_COD_CLIENTE:=NULL;',
'                            :P148_CLIENTE:=NULL;',
'                            :P148_DIRECCION:=NULL;',
'                            :P148_CIUDAD:=NULL;',
'                            :P148_DEPARTAMENTO:=NULL;',
'                            :P148_TELEFONO:=NULL;',
'                            :P148_FECHA:=null;',
'                            :P148_RESPONSABLE:=null;',
'',
'                            exception',
'                                when others then',
'                                    apex_error.add_error (p_message => SQLERRM,',
'                                                p_display_location      => apex_error.c_inline_in_notification',
'                                                );',
'                            end;',
'       ',
'',
'END IF;',
' '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido Confirmar el Ticket'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22231861565089590)
,p_process_when=>'P148_P_ID_TICKET'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22244138947089606)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Deriva_tkt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P148_P_ID_TICKET IS NOT NULL THEN',
'/*        ',
'declare                           ',
'  v_nro_ticket number;',
'  v_ser_ticket VARCHAR2(10);',
'  v_cod_tipo_ticket VARCHAR2(10);',
'  v_nro_ort VARCHAR2(30);',
'  v_ser_ort VARCHAR2(10);',
'  v_cod_cliente VARCHAR2(30);',
'  v_nci VARCHAR2(30);',
'  v_cod_articulo VARCHAR2(30);',
'  v_garantia VARCHAR2(30);',
'  v_observacion VARCHAR2(300);',
'  v_hora_atencion VARCHAR2(30);',
'  v_condicion_producto VARCHAR2(300);',
'  v_nro_boleta_amarillA VARCHAR2(30);',
'BEGIN ',
'',
'      select  nro_ticket, ser_ticket, cod_tipo_ticket,   nro_ort, ser_ort, cod_cliente, nci, cod_articulo, garantia,',
'          observacion, hora_atencion, condicion_producto, nro_boleta_amarilla ',
'        into   v_nro_ticket, v_ser_ticket, v_cod_tipo_ticket, v_nro_ort, v_ser_ort, v_cod_cliente, v_nci,',
'        v_cod_articulo, v_garantia, v_observacion, v_hora_atencion,   v_condicion_producto, v_nro_boleta_amarilla ',
'        from inv.ca_ticket_atencion',
'       where id_ticket = :P148_P_ID_TICKET;',
'       ',
'      insert into inv.ca_ticket_atencion',
'        (cod_empresa, nro_ticket, ser_ticket, cod_tipo_ticket, fecha, nro_ort, ser_ort, cod_cliente, nci, cod_pers_responsable,',
'        nro_ticket_ref, fecha_alta, cod_usuario, cod_articulo, garantia, observacion, latitude_1, longitude_1, fec_ubi_1,',
'         hora_atencion, condicion_producto, nro_boleta_amarilla)',
'      values',
'        (''1'', v_nro_ticket, v_ser_ticket, v_cod_tipo_ticket, :P148_FECHA, v_nro_ort, v_ser_ort, v_cod_cliente, v_nci, :P148_RESPONSABLE,',
'         :P148_P_ID_TICKET, SYSDATE, v(''APP_USER''), v_cod_articulo, v_garantia, v_observacion, replace(:P148_latitude,''.'','',''), replace(:P148_longitude,''.'','',''), SYSDATE,',
'          v_hora_atencion, v_condicion_producto, v_nro_boleta_amarilla);',
'',
'',
'        update inv.ca_ticket_atencion',
'           set fecha_cierre = sysdate,',
'                user_cierre = v(''APP_USER'')',
'          where id_ticket = :P148_P_ID_TICKET;                    ',
'        commit;',
'        apex_application.g_print_success_message := ''<span class="notification"> Nro: ''|| :P148_P_ID_TICKET||''  -  </span>'';',
'    exception',
'        when others then',
'            apex_error.add_error (p_message => SQLERRM,',
'                        p_display_location      => apex_error.c_inline_in_notification',
'                        );',
'    end;',
'*/',
'',
'    ',
'',
'  if :P148_RESPONSABLE is not null then',
'            declare',
'                dummy char(1);',
'            begin',
'                SELECT DISTINCT ''1''',
'                INTO DUMMY ',
'                FROM ca_ticket_atencion',
'                where id_ticket = :P148_P_ID_TICKET',
'                AND  COD_PERS_RESPONSABLE=:P148_RESPONSABLE;',
'',
'                    apex_error.add_error (p_message => ''Debe seleccionar un Responsable distinto.'',',
'                                p_display_location      => apex_error.c_inline_in_notification',
'                                );',
'            exception',
'            when no_data_found then            ',
'',
'                  inv.catickets.deriva_ticket(pi_cod_empresa => :p_cod_empresa,',
'                                              pi_id_ticket => :P148_P_ID_TICKET,',
'                                              pi_fecha => :P148_FECHA,',
'                                              pi_responsable => :P148_RESPONSABLE,',
'                                              pi_cod_usuario => :APP_USER,',
'                                              pi_latitude => :P148_latitude,',
'                                              pi_longitude => :P148_longitude);',
'',
'',
'            when others then                ',
'                apex_error.add_error (p_message => SQLERRM,',
'                            p_display_location      => apex_error.c_inline_in_notification',
'                            );',
'            end ;',
'  else',
'            apex_error.add_error (p_message => ''Debe seleccionar un responsable'',',
'                        p_display_location      => apex_error.c_inline_in_notification',
'                        );',
'  end if;',
'',
'',
'END IF;',
' '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha podido Derivar el Ticket'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22231413854089589)
,p_process_when=>'P148_P_ID_TICKET'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(129099817044845228)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Cerrar Cuadro de Dialogo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SELECT * FROM DUAL WHERE :P148_ACCION_DER = ''N'' '
,p_process_when_type=>'EXISTS'
);
wwv_flow_imp.component_end;
end;
/
