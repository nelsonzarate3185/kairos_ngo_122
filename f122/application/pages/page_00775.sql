prompt --application/pages/page_00775
begin
--   Manifest
--     PAGE: 00775
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
 p_id=>775
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reserva de Salas'
,p_alias=>'RESERVA-DE-SALAS'
,p_step_title=>'Reserva de Salas'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  .fc-col-header-cell  { background-color: #fff8b7;',
'                        background-image: linear-gradient(180deg, #fff8b7 0%, #FFFB7D 100%)',
'                        } ',
'',
' .fc-daygrid-day{background-image: linear-gradient(to top, #e2ebf0 0%, white 100%);}',
'',
' .fc-header-toolbar {background-color: #fdfcfb !important;',
'                        background-image: linear-gradient(180deg,#97D9E1   0%, #8BC6EC 100%) !important',
'                        }',
'',
'                      ',
'',
'.t-Body-contentInner{    background: #c0d0e6!important;}',
' ',
'',
'.t-Form-label, .t-Form-itemText--pre{',
'    color:  #003A85 !important;     ',
'    font-weight: bold;',
'    } ',
'',
'',
'',
'    .a-IRR-toolbar, .a-IRR-content',
'    {    background: #d0e0f783!important;}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240911095504'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(382739294893946311)
,p_plug_name=>'AGENDA'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--accent3:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.COD_AGENDAMIENTO COD,',
'       C.COD_SALA,',
'      S.DESCRIPCION ||'' ''|| HI.HORA_INICIO ||'' ''||Hf.HORA_INICIO SALA,',
'       M.DESCRIPCION MOTIVO,',
'       C.FECHA,',
'       to_date(C.FECHA ||'' ''||HI.HORA_INICIO,''dd/mm/yyyy hh24:mi'') INICIO,',
'        to_date(C.FECHA ||'' ''||HF.HORA_INICIO,''dd/mm/yyyy hh24:mi'')  FIN,',
'       C.ESTADO,',
'       s.CLASS css_class ,',
'       C.OBSERVACION',
'FROM CA_CALENDARIO_REUNION C,',
'     CA_SALAS              S,',
'     CA_MOTIVO_REUNION     M,',
'     ca_horario_reunion HI,',
'     ca_horario_reunion HF',
'WHERE ( :P775_SALA IS NULL OR C.COD_SALA = :P775_SALA)',
'AND ( :P775_FECHA IS NULL OR C.FECHA =  :P775_FECHA )',
'AND   C.COD_SALA =S.COD_SALA',
'AND   C.COD_HORA_INICIO=HI.COD_HORARIO',
'AND   C.COD_HORA_FIN = HF.COD_HORARIO',
'AND   C.COD_MOTIVO = M.COD_MOTIVO',
'ORDER BY C.FECHA ASC, HI.HORA_INICIO ASC ,HI.HORA_FIN ASC',
'     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P775_SALA,P775_FECHA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'INICIO'
,p_attribute_02=>'FIN'
,p_attribute_03=>'SALA'
,p_attribute_04=>'COD'
,p_attribute_05=>'javascript:$s(''P775_AGENDAR'',''&COD.'');'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_16=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&MOTIVO. </br>',
'&OBSERVACION.'))
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(382739406778946313)
,p_plug_name=>'Reservar sala'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(382739731045946316)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(382739406778946313)
,p_button_name=>'CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(382741921158946338)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(382739294893946311)
,p_button_name=>'AGENDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agendar'
,p_button_position=>'ORDER_BY_ITEM'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-4-bg u-normal-text'
,p_icon_css_classes=>'fa-calendar'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(387041039153889141)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(382739294893946311)
,p_button_name=>'SALAS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salas'
,p_button_position=>'ORDER_BY_ITEM'
,p_button_redirect_url=>'f?p=&APP_ID.:783:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-server-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382739300583946312)
,p_name=>'P775_AGENDAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(382739294893946311)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382739891178946317)
,p_name=>'P775_ABM_SALA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(382739406778946313)
,p_prompt=>'Sala'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION , COD_SALA ',
'from  CA_salas ',
'where nvl(activo,''S'')<>''N'''))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382739985770946318)
,p_name=>'P775_ABM_MOTIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(382739406778946313)
,p_prompt=>'Motivo de Reunion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION , COD_motivo',
'from  Ca_Motivo_Reunion'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382740045546946319)
,p_name=>'P775_ABM_FECHA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(382739406778946313)
,p_prompt=>'Fecha'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>10
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
 p_id=>wwv_flow_imp.id(382740105110946320)
,p_name=>'P775_ABM_HORA_INICIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(382739406778946313)
,p_prompt=>'Desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		select HORA_INICIO,  COD_HORARIO',
'		from ca_horario_reunion HH',
'		order by 2 asc	'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382740289913946321)
,p_name=>'P775_ABM_HORA_FIN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(382739406778946313)
,p_prompt=>'Hasta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		select HORA_INICIO,  COD_HORARIO',
'		from ca_horario_reunion HH',
'		order by 2 asc	'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382740316616946322)
,p_name=>'P775_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(382739406778946313)
,p_item_default=>'''A'''
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:AGENDADO;A,FINALIZADO;F,CANCELADO;C,EN DESARROLLO;D'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382740530769946324)
,p_name=>'P775_ABM_OBSERVACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(382739406778946313)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382741790649946336)
,p_name=>'P775_SALA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(382739294893946311)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sala'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION , COD_SALA ',
'from  CA_salas '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(382741862642946337)
,p_name=>'P775_FECHA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(382739294893946311)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Fecha'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>10
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(382739593993946314)
,p_name=>'da_open_reg'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P775_AGENDAR'
,p_condition_element=>'P775_AGENDAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382740464305946323)
,p_event_id=>wwv_flow_imp.id(382739593993946314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P775_AGENDAR IS NOT NULL AND :P775_AGENDAR<>''S'' THEN',
'    BEGIN',
'        SELECT COD_SALA, COD_HORA_INICIO, COD_HORA_FIN, OBSERVACION,ESTADO,FECHA,COD_MOTIVO',
'        INTO   :P775_ABM_SALA, :P775_ABM_HORA_INICIO, :P775_ABM_HORA_FIN,:P775_ABM_OBSERVACION,:P775_ESTADO,:P775_ABM_FECHA,:P775_ABM_MOTIVO',
'        FROM CA_CALENDARIO_REUNION',
'        WHERE COD_AGENDAMIENTO=:P775_AGENDAR;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P775_ABM_SALA  :=NULL;',
'            :P775_ABM_HORA_INICIO :=NULL;',
'            :P775_ABM_HORA_FIN  :=NULL;',
'            :P775_ABM_OBSERVACION :=NULL;',
'            :P775_ESTADO :=NULL;',
'            :P775_ABM_FECHA :=NULL;',
'            :P775_ABM_MOTIVO :=NULL;',
'    END;',
'ELSE',
'            :P775_ABM_SALA  :=NULL;',
'            :P775_ABM_HORA_INICIO :=NULL;',
'            :P775_ABM_HORA_FIN  :=NULL;',
'            :P775_ABM_OBSERVACION :=NULL;',
'            :P775_ESTADO :=NULL;',
'            :P775_ABM_FECHA :=NULL;',
'            :P775_ABM_MOTIVO :=NULL;',
'',
'END IF;'))
,p_attribute_02=>'P775_AGENDAR'
,p_attribute_03=>'P775_ABM_SALA,P775_ABM_MOTIVO,P775_ABM_FECHA,P775_ABM_HORA_INICIO,P775_ABM_HORA_FIN,P775_ESTADO,P775_ABM_OBSERVACION'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382739654415946315)
,p_event_id=>wwv_flow_imp.id(382739593993946314)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(382739406778946313)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(382740649911946325)
,p_name=>'DA_CHNG_HI'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P775_ABM_HORA_INICIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382740780251946326)
,p_event_id=>wwv_flow_imp.id(382740649911946325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P775_ABM_HORA_FIN'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P775_ABM_HORA_INICIO+1'
,p_attribute_07=>'P775_ABM_HORA_INICIO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(382740845965946327)
,p_name=>'DA_CHNG_HF'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P775_ABM_HORA_FIN'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(apex.item("P775_ABM_HORA_INICIO").getValue())> parseInt(apex.item("P775_ABM_HORA_FIN").getValue())'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382741093073946329)
,p_event_id=>wwv_flow_imp.id(382740845965946327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Hora fin no puede ser menor.'
,p_attribute_02=>'Horario de Reunion'
,p_attribute_04=>'fa-warning'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(382741363954946332)
,p_name=>'da_confirm'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(382739731045946316)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382741474365946333)
,p_event_id=>wwv_flow_imp.id(382741363954946332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P775_ABM_SALA is not null then',
'    if :P775_ABM_MOTIVO is not null then',
'        if :P775_ABM_FECHA is not null then',
'            if nvl(:P775_ABM_HORA_INICIO,1) < nvl(:P775_ABM_HORA_FIN,0) then',
'                DECLARE',
'                    VCOD NUMBER;',
'                begin',
'                        IF :P775_AGENDAR IS NULL THEN',
'',
'                            	SELECT NVL(MAX(COD_AGENDAMIENTO),0)+1',
'        		  	            INTO   VCOD ',
'        				        FROM CA_CALENDARIO_REUNION  ;  ',
'',
'                                insert into inv.ca_calendario_reunion',
'                                  (cod_sala, cod_hora_inicio, cod_hora_fin, fecha_alta, cod_usuario, observacion, estado, fecha, cod_agendamiento, cod_motivo)',
'                                values',
'                                  (:P775_ABM_SALA, :P775_ABM_HORA_INICIO, :P775_ABM_HORA_FIN, SYSDATE, :APP_USER, :P775_ABM_OBSERVACION, ''A'', :P775_ABM_FECHA , VCOD, :P775_ABM_MOTIVO);',
'                        ELSE',
'                            update inv.ca_calendario_reunion',
'                               set cod_sala = :P775_ABM_SALA,',
'                                   cod_hora_inicio =  :P775_ABM_HORA_INICIO,',
'                                   cod_hora_fin =  :P775_ABM_HORA_FIN,',
'                                   fecha_alta = SYSDATE,',
'                                   cod_usuario = :APP_USER,',
'                                   observacion = :P775_ABM_OBSERVACION,',
'                                   estado = :P775_ESTADO,',
'                                   fecha = :P775_ABM_FECHA, ',
'                                   cod_motivo = :P775_ABM_MOTIVO ',
'                             where cod_agendamiento = :P775_AGENDAR ;',
'                        END IF; ',
'                        ',
'                        exception',
'                    when others then',
'                     raise_application_error(-20000, SQLERRM);',
'                end;',
'            else    ',
'                raise_application_error(-20000, ''Debe cargar correctamente la hora inicio y fin de la Reunion.'');',
'            end if;',
'',
'        else',
'                raise_application_error(-20000, ''Debe seleccionar una Fecha de Reunion.'');',
'        end if;',
'',
'    else',
'            raise_application_error(-20000, ''Debe seleccionar un Motivo.'');',
'    end if;',
'',
'else',
'            raise_application_error(-20000, ''Debe seleccionar una Sala de Reunion.'');',
'end if;'))
,p_attribute_02=>'P775_ABM_SALA,P775_ABM_MOTIVO,P775_ESTADO,P775_ABM_FECHA,P775_ABM_HORA_INICIO,P775_ABM_HORA_FIN,P775_ABM_OBSERVACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382742899727946347)
,p_event_id=>wwv_flow_imp.id(382741363954946332)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(382739406778946313)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382741556718946334)
,p_event_id=>wwv_flow_imp.id(382741363954946332)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(382739294893946311)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382743047814946349)
,p_event_id=>wwv_flow_imp.id(382741363954946332)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Agendamiento Exitoso!'
,p_attribute_03=>'success'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(382742054131946339)
,p_name=>'DA_FILTRA_SALA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P775_SALA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382742108331946340)
,p_event_id=>wwv_flow_imp.id(382742054131946339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(382739294893946311)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(382742260577946341)
,p_name=>'DA_FILTRA_FECHA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P775_FECHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382742388252946342)
,p_event_id=>wwv_flow_imp.id(382742260577946341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(382739294893946311)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(382742591138946344)
,p_name=>'DA_AGENDAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(382741921158946338)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382742609670946345)
,p_event_id=>wwv_flow_imp.id(382742591138946344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P775_AGENDAR,P775_ABM_SALA,P775_ABM_MOTIVO,P775_ABM_FECHA,P775_ESTADO,P775_ABM_HORA_INICIO,P775_ABM_HORA_FIN,P775_ABM_OBSERVACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(382742788108946346)
,p_event_id=>wwv_flow_imp.id(382742591138946344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(382739406778946313)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(387041568120889146)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'this.browserEvent != "load" && this.data.dialogPageId == "783"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(387041634771889147)
,p_event_id=>wwv_flow_imp.id(387041568120889146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(382739294893946311)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(382742412332946343)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
