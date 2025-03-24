prompt --application/pages/page_00343
begin
--   Manifest
--     PAGE: 00343
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
 p_id=>343
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Distritos SET - BSDISSET'
,p_alias=>'DISTRITOS-SET-BSDISSET'
,p_step_title=>'Distritos SET - BSDISSET'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#btn, #btnew{ ',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'}',
'',
'#save{ ',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, darkblue  0%, #003a85 100%);',
'        color:  #ffee00e4;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  darkblue;',
'}',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
'',
'#reg_parametros {',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'      ',
'#subreg {',
'      background-color: #487ab8 !important;',
'      }',
'  ',
' #P217_ACTIVO_LABEL , #a_Collapsible1_subreg_heading{ color: yellow !important;}',
' ',
'  .t-Report-colHead {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230119100404'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(171734467539855596)
,p_plug_name=>'Crear nuevo Distrito'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222530190341646016)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(222791109515619571)
,p_name=>'Listado '
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_departamento cod_dpto,',
'       cod_departamento nom_dpto,',
'       cod_distrito,',
'       descripcion,',
'       rowid idreg,',
'       null Eliminar',
'from BS_DISTRITOS_SET c ',
' where  (:P343_DEPARTAMENTO is null or cod_departamento= :P343_DEPARTAMENTO)',
' and    (:P343_DISTRITO IS NULL OR UPPER(descripcion) LIKE REPLACE(UPPER(''%''||:P343_DISTRITO||''%''),'' '',''%''))',
'ORDER BY 1,3 ASC'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P343_NUEVO_DPTO,P343_DISTRITO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encontraron datos para los filtros seleccionados.'
,p_query_num_rows_type=>'SEARCH_ENGINE'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(93790507362437701)
,p_query_column_id=>1
,p_column_alias=>'COD_DPTO'
,p_column_display_sequence=>80
,p_column_heading=>unistr('C\00F3digo')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(93790614629437702)
,p_query_column_id=>2
,p_column_alias=>'NOM_DPTO'
,p_column_display_sequence=>90
,p_column_heading=>'Descripcion del Departamento'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	select descripcion, cod_departamento ',
'	 from bs_departamentos_set '))
,p_lov_language=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(93790767891437703)
,p_query_column_id=>3
,p_column_alias=>'COD_DISTRITO'
,p_column_display_sequence=>100
,p_column_heading=>unistr('C\00F3digo Distrito')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(93790842644437704)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>110
,p_column_heading=>'Descripcion del Distrito'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(93774955588406979)
,p_query_column_id=>5
,p_column_alias=>'IDREG'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(93775384009406980)
,p_query_column_id=>6
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>120
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P343_COD_ELIMINAR'',''#IDREG#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ',
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;  '))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93778071966406985)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(222530190341646016)
,p_button_name=>'BUSCAR'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'FILTRAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93778472163406985)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(222530190341646016)
,p_button_name=>'NUEVO'
,p_button_static_id=>'btnew'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo Distrito'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-users-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93780778351406987)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(171734467539855596)
,p_button_name=>'guardar'
,p_button_static_id=>'save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93778838329406985)
,p_name=>'P343_DEPARTAMENTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(222530190341646016)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion||'' (''||cod_departamento||'')'' Nombre ,cod_departamento',
'from bs_departamentos_set ',
'order by 1 asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93779670132406986)
,p_name=>'P343_DISTRITO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(222530190341646016)
,p_prompt=>'Distrito'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93780038259406987)
,p_name=>'P343_COD_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(222530190341646016)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93781101346406987)
,p_name=>'P343_NUEVO_DPTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(171734467539855596)
,p_prompt=>'Usuario Principal '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion||'' - ''||cod_departamento  Nombre ,cod_departamento',
'from bs_departamentos_set ',
'order by 1 asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Seleccionar-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93781953225406988)
,p_name=>'P343_NUEVO_DISTRITO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(171734467539855596)
,p_prompt=>'Descripcion del Distrito'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93790961237437705)
,p_name=>'P343_NUEVO_CODIGO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(171734467539855596)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93787483211406997)
,p_name=>'da_eliminar_prov'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P343_COD_ELIMINAR'
,p_condition_element=>'P343_COD_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93787921826406997)
,p_event_id=>wwv_flow_imp.id(93787483211406997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el Distrito?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93788406231406997)
,p_event_id=>wwv_flow_imp.id(93787483211406997)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        delete inv.BS_DISTRITOS_SET',
'         where  rowid = :P343_COD_ELIMINAR ;',
'           commit;',
'exception ',
'    when others then',
'     raise_application_error(-20000, ''Error al itentar eliminar el registro - '' || sqlerrm );',
'end;'))
,p_attribute_02=>'P343_COD_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93788926094406998)
,p_event_id=>wwv_flow_imp.id(93787483211406997)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93782318808406994)
,p_name=>'DA_SUBMIT'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93778071966406985)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93782811598406995)
,p_event_id=>wwv_flow_imp.id(93782318808406994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93783254237406995)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93778472163406985)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93783747896406995)
,p_event_id=>wwv_flow_imp.id(93783254237406995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P343_NUEVO_DPTO,P343_NUEVO_DISTRITO,P343_NUEVO_CODIGO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93784206880406996)
,p_event_id=>wwv_flow_imp.id(93783254237406995)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(171734467539855596)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93784620571406996)
,p_name=>'da_guardar'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93780778351406987)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93785128422406996)
,p_event_id=>wwv_flow_imp.id(93784620571406996)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P343_NUEVO_DPTO is null then',
'--- error-- ',
'raise_application_error(-20000, ''Debe seleccionar el Departamento'' );',
'',
'else',
'    if :P343_NUEVO_CODIGO is null then',
'    ---- error----- ',
'    raise_application_error(-20000, ''Debe cargar el Codigo de Distrito''  );',
'    else ',
'    ',
'          if :P343_NUEVO_DISTRITO is not null then',
'                                declare ',
'                                    dummy varchar2(1);',
'                                    errm exception;',
'                                begin ',
'                                    select distinct ''1''',
'                                    into dummy                     ',
'                                    from inv.BS_DISTRITOS_SET ',
'                                    where cod_departamento= :P343_NUEVO_DPTO',
'                                    and   cod_distrito= :P343_NUEVO_CODIGO ;',
'                                     raise errm;',
'                                exception',
'                                    when no_data_found then            ',
'                                        begin',
'                                                 insert into inv.bs_distritos_set',
'                                                   (cod_departamento, cod_distrito, descripcion)',
'                                                 values',
'                                                   (:P343_NUEVO_DPTO, :P343_NUEVO_CODIGO, :P343_NUEVO_DISTRITO); ',
'                                                commit;',
'                                        exception',
'                                            when others then',
'                                                  raise_application_error(-20000, ''Error al intentar guardar los datos'' ||sqlerrm );',
'                                        end;',
'                                    when errm then',
'                                         raise_application_error(-20000, ''Ya existe el Codigo de Distrito para el Departamento Seleccionado'' );',
'                                    when others then                     ',
'                                         raise_application_error(-20000, ''Error al intentar consultar la tabla ''  );',
'                                end; ',
'        ',
'            else                        ',
'                 raise_application_error(-20000, ''Debe cargar la Descripcion del Distrito''  );',
'            end if;',
'    end if;',
'end if;'))
,p_attribute_02=>'P343_NUEVO_DPTO,P343_NUEVO_CODIGO,P343_NUEVO_DISTRITO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93785628561406997)
,p_event_id=>wwv_flow_imp.id(93784620571406996)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93786062572406997)
,p_name=>'da_change'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P343_ALERT'
,p_condition_element=>'P343_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93786551431406997)
,p_event_id=>wwv_flow_imp.id(93786062572406997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P343_ALERT.'
,p_attribute_02=>unistr('Atenci\00F3n')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93787066737406997)
,p_event_id=>wwv_flow_imp.id(93786062572406997)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P343_ALERT'
);
wwv_flow_imp.component_end;
end;
/
