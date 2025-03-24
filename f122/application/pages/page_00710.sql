prompt --application/pages/page_00710
begin
--   Manifest
--     PAGE: 00710
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
 p_id=>710
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Periodos Serv. Tec.'
,p_alias=>'PERIODOS-SERV-TEC'
,p_step_title=>'Periodos Serv. Tec.'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>' '
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240104103222'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(253446152352777428)
,p_name=>'Periodos'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NUM_PERIODO,',
'       FEC_INICIAL,',
'       FEC_FINAL,        ',
'       ESTADO',
'  from CA_PERIODOS_SERVICIO',
'  WHERE COD_EMPRESA = :P_COD_EMPRESA',
'  order by NUM_PERIODO desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(253446385845777430)
,p_query_column_id=>1
,p_column_alias=>'NUM_PERIODO'
,p_column_display_sequence=>20
,p_column_heading=>unistr('N\00BA Periodo')
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P710_UPD_PERIODO'',''#NUM_PERIODO#'');'
,p_column_linktext=>'#NUM_PERIODO#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(253446448553777431)
,p_query_column_id=>2
,p_column_alias=>'FEC_INICIAL'
,p_column_display_sequence=>30
,p_column_heading=>'Fecha Inicial'
,p_use_as_row_header=>'N'
,p_column_format=>'dd/mm/yyyy'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(253446503048777432)
,p_query_column_id=>3
,p_column_alias=>'FEC_FINAL'
,p_column_display_sequence=>40
,p_column_heading=>'Fecha Final'
,p_use_as_row_header=>'N'
,p_column_format=>'dd/mm/yyyy'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(253446649184777433)
,p_query_column_id=>4
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>50
,p_column_heading=>'ACTIVO'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253446885750777435)
,p_plug_name=>'PERIODO'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(253447261573777439)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(253446152352777428)
,p_button_name=>'Nuevo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Periodo'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(253447104127777438)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(253446885750777435)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(253446954182777436)
,p_name=>'P710_FECHA_INICIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(253446885750777435)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(253447009295777437)
,p_name=>'P710_FECHA_FINA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(253446885750777435)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(253447630499777443)
,p_name=>'P710_UPD_PERIODO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(253446885750777435)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(253447845284777445)
,p_name=>'P710_ACTIVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(253446885750777435)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253447322180777440)
,p_name=>'open_reg'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(253447261573777439)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253447551479777442)
,p_event_id=>wwv_flow_imp.id(253447322180777440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P710_FECHA_INICIAL,P710_FECHA_FINA,P710_UPD_PERIODO,P710_ACTIVO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253447491642777441)
,p_event_id=>wwv_flow_imp.id(253447322180777440)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(253446885750777435)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253447969916777446)
,p_name=>'DA_OPN_REG'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P710_UPD_PERIODO'
,p_condition_element=>'P710_UPD_PERIODO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253448161373777448)
,p_event_id=>wwv_flow_imp.id(253447969916777446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(253446885750777435)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253448009806777447)
,p_event_id=>wwv_flow_imp.id(253447969916777446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select  FEC_INICIAL,       FEC_FINAL,               ESTADO',
'INTO    :P710_FECHA_INICIAL, :P710_FECHA_FINA, :P710_ACTIVO',
'  from CA_PERIODOS_SERVICIO',
'  WHERE COD_EMPRESA = :P_COD_EMPRESA',
'  AND NUM_PERIODO = :P710_UPD_PERIODO',
';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P710_FECHA_INICIAL :=NULL;',
'        :P710_FECHA_FINA:=NULL;',
'        :P710_ACTIVO:=''S'';',
'END;'))
,p_attribute_02=>'P710_UPD_PERIODO'
,p_attribute_03=>'P710_FECHA_INICIAL,P710_FECHA_FINA,P710_ACTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253448222851777449)
,p_name=>'da_guardar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(253447104127777438)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253448319315777450)
,p_event_id=>wwv_flow_imp.id(253448222851777449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P710_FECHA_INICIAL IS NOT NULL THEN',
'        IF :P710_FECHA_FINA IS NOT NULL THEN',
'            DECLARE',
'                VNUMPER NUMBER;',
'            BEGIN',
'                    IF :P710_UPD_PERIODO IS NULL THEN',
'                    ',
'                            select NVL(MAX(NUM_PERIODO),0)+1',
'                            INTO VNUMPER',
'                            from ca_periodos_servicio',
'                            where cod_empresa=''1'';',
'',
'',
'                              insert into inv.ca_periodos_servicio',
'                                (cod_empresa, num_periodo, fec_inicial, fec_final, estado)',
'                              values',
'                                (:P_COD_EMPRESA, VNUMPER,:P710_FECHA_INICIAL, :P710_FECHA_FINA,  nvl(:P710_ACTIVO,''S''));',
'                              ',
'',
'',
'                    ELSE  ',
'                        UPDATE ca_periodos_servicio',
'                        set fec_inicial=  :P710_FECHA_INICIAL, ',
'                            fec_final =  :P710_FECHA_FINA, ',
'                            estado =nvl(:P710_ACTIVO,''S'') ,',
'                            fec_estado = sysdate',
'                        where cod_empresa=''1''',
'                        AND NUM_PERIODO = :P710_UPD_PERIODO ; ',
'                    END IF;',
'                  commit;',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                     raise_application_error(-20000, sqlerrm );',
'            END;',
'        ELSE',
'             raise_application_error(-20000, ''Debe cargar correctamente la Fecha Final.'' );',
'        END IF;',
'ELSE',
'     raise_application_error(-20000, ''Debe cargar correctamente la Fecha Inicial.'' );',
'END IF;',
'',
'',
''))
,p_attribute_02=>'P710_FECHA_INICIAL,P710_UPD_PERIODO,P710_FECHA_FINA,P710_ACTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259898811437015003)
,p_event_id=>wwv_flow_imp.id(253448222851777449)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(253446152352777428)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(259898762779015002)
,p_event_id=>wwv_flow_imp.id(253448222851777449)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(253446885750777435)
);
wwv_flow_imp.component_end;
end;
/
