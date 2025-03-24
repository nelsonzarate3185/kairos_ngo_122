prompt --application/pages/page_00641
begin
--   Manifest
--     PAGE: 00641
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
 p_id=>641
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Impresion de Etiquetas - STETIQUE'
,p_alias=>'IMPRESION-DE-ETIQUETAS-STETIQUE'
,p_step_title=>unistr('Impresi\00F3n de Etiquetas. ')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 46 || key == 45}',
'',
'',
'/// REPORTE FN',
'',
'function descargarReporte(p_cod_empresa,p_cliente,p_telefono_2,p_telefono,p_direcc,p_ciudad,p_departamento,p_observacion){',
'    var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CCCLIEN1.pdf?''',
'            +''P_COD_EMPRESA=''+p_cod_empresa',
'            +''&P_CLIENTE=''+p_cliente',
'            +''&P_TELEFONO_2=''+p_telefono_2',
'            +''&P_TELEFONO=''+p_telefono',
'            +''&P_DIRECC=''+p_direcc',
'            +''&P_CIUDAD=''+p_ciudad ',
'            +''&P_DEPARTAMENTO=''+p_departamento   ',
'            +''&P_OBSERVACION=''+p_observacion               ',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240814160751'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(219654305796318901)
,p_plug_name=>'Main'
,p_region_css_classes=>'u-color-43-border'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(219654428885318902)
,p_plug_name=>unistr('Impresi\00F3n de Etiquetas')
,p_parent_plug_id=>wwv_flow_imp.id(219654305796318901)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(219655497856318912)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(219654305796318901)
,p_button_name=>'bt_ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-play-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(219656529257318923)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(219654305796318901)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Limpiar'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-eraser'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219654506407318903)
,p_name=>'P641_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(219654428885318902)
,p_prompt=>' Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE_STETIQUE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode( p.nombre, nvl( p.nomb_fantasia, p.nombre ), p.nombre, ltrim( p.nombre ) || '' '' || nvl( p.nomb_fantasia, '' '' ) ) nombre, cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :p_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'order by lpad( cod_cliente, 15, '' '' )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccione --'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P641_NOM_CLIENTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219654634860318904)
,p_name=>'P641_NOM_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(219654428885318902)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219654775272318905)
,p_name=>'P641_COD_DIRECC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(219654428885318902)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DIRECC_STETIQUE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dp.detalle, dp.cod_direccion',
'from cc_clientes c, personas p, DIREC_PERSONAS DP',
'where c.cod_empresa = :p_cod_empresa',
'and c.cod_cliente = :P641_COD_CLIENTE',
'and c.cod_persona = p.cod_persona',
'and dp.cod_persona=p.cod_persona'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccione --'
,p_lov_cascade_parent_items=>'P641_COD_CLIENTE'
,p_ajax_items_to_submit=>'P641_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DETALLE:P641_DESC_DIRECC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219654866225318906)
,p_name=>'P641_DESC_DIRECC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(219654428885318902)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219654903077318907)
,p_name=>'P641_DEPARTAMENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(219654428885318902)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219655065095318908)
,p_name=>'P641_CIUDAD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(219654428885318902)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219655160190318909)
,p_name=>'P641_P_TELEFONO_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(219654428885318902)
,p_prompt=>unistr(' Tel\00E9fono 1')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219655204241318910)
,p_name=>'P641_P_TELEFONO_2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(219654428885318902)
,p_prompt=>unistr('Telef\00F3no 2')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219655332962318911)
,p_name=>'P641_OBSERVACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(219654428885318902)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(219655625208318914)
,p_name=>'P641_COD_MODULO'
,p_item_sequence=>940
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219655721856318915)
,p_name=>'da_direcc'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P641_COD_DIRECC'
,p_condition_element=>'P641_COD_DIRECC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219655833322318916)
,p_event_id=>wwv_flow_imp.id(219655721856318915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vcod_ciudad varchar2(400);',
'vcod_departamento VARCHAR2(400);',
'VCOD_PERSONA VARCHAR2(400);',
'      BEGIN',
'        select  cod_ciudad, cod_provincia, C.COD_PERSONA',
'           into  vcod_ciudad, vcod_departamento, VCOD_PERSONA',
'          from cc_clientes c, personas p, DIREC_PERSONAS DP',
'         where c.cod_empresa = :P_cod_empresa',
'           and c.cod_cliente = :P641_COD_CLIENTE',
'           and c.cod_persona = p.cod_persona',
'           and dp.cod_persona = p.cod_persona',
'           AND (dp.cod_direccion = :P641_COD_DIRECC or :P641_COD_DIRECC is null) ;',
'        ------------------------------------------------------------------------',
'          begin',
'            select DESCRIPCION',
'             INTO :P641_DEPARTAMENTO',
'            from provincias a where cod_pais=''PAR'' ',
'                AND COD_PROVINCIA= vcod_departamento;',
'          EXCEPTION',
'             when others then',
'             :P641_DEPARTAMENTO:=NULL;',
'          end;',
'        ------------------------------------------------------------------------',
'',
'           begin',
'            select DESCRIPCION',
'             INTO :P641_CIUDAD',
'            from CIUDADES a ',
'            where cod_pais=''PAR'' ',
'                AND COD_PROVINCIA=vcod_departamento ',
'                AND COD_CIUDAD=VCOD_CIUDAD;',
'            EXCEPTION',
'             when others then',
'             :P641_CIUDAD:=NULL;',
'          end;',
'        ------------------------------------------------------------------------',
'        BEGIN',
'            SELECT codigo_Area||num_telefono',
'             into :P641_P_TELEFONO_1',
'            FROm telef_personas ',
'            where cod_persona=vcod_persona',
'            and rownum=1;',
'        EXCEPTION',
'             when others then',
'             :P641_P_TELEFONO_1:=NULL;',
'        end;',
'',
'     END;',
''))
,p_attribute_02=>'P641_COD_CLIENTE,P641_COD_DIRECC'
,p_attribute_03=>'P641_DEPARTAMENTO,P641_CIUDAD,P641_P_TELEFONO_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219655962960318917)
,p_name=>'da_numeros_tel'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P641_P_TELEFONO_1,P641_P_TELEFONO_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219656018048318918)
,p_event_id=>wwv_flow_imp.id(219655962960318917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219656196850318919)
,p_name=>'da_reporte'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(219655497856318912)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219656259262318920)
,p_event_id=>wwv_flow_imp.id(219656196850318919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea crear una etiqueta?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-ticket'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219656318240318921)
,p_event_id=>wwv_flow_imp.id(219656196850318919)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'descargarReporte(apex.item(''P_COD_EMPRESA'').getValue(),',
'                 apex.item(''P641_COD_CLIENTE'').getValue(),',
'                  apex.item(''P641_P_TELEFONO_2'').getValue(),',
'                 apex.item(''P641_P_TELEFONO_1'').getValue(),',
'                 apex.item(''P641_COD_DIRECC'').getValue(),',
'                 apex.item(''P641_CIUDAD'').getValue(),',
'                 apex.item(''P641_DEPARTAMENTO'').getValue(),',
'                 apex.item(''P641_OBSERVACION'').getValue());',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219656457289318922)
,p_event_id=>wwv_flow_imp.id(219656196850318919)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\00A1Etiqueta Creada!')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(219656688179318924)
,p_name=>'da_limpiar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(219656529257318923)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219656851601318926)
,p_event_id=>wwv_flow_imp.id(219656688179318924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea limpiar los valores ingresados en los campos?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-lg fa-eraser'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(219656792119318925)
,p_event_id=>wwv_flow_imp.id(219656688179318924)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P641_COD_CLIENTE := null;',
':P641_COD_DIRECC := null;',
':P641_OBSERVACION := null;',
':P641_CIUDAD:= null;',
':P641_P_TELEFONO_1 := null;',
':P641_P_TELEFONO_2:= null;',
':P641_DEPARTAMENTO := null;'))
,p_attribute_03=>'P641_COD_CLIENTE,P641_NOM_CLIENTE,P641_COD_DIRECC,P641_DEPARTAMENTO,P641_CIUDAD,P641_P_TELEFONO_1,P641_P_TELEFONO_2,P641_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(219655566783318913)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>':P641_COD_MODULO := ''ST'';'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
