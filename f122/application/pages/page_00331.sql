prompt --application/pages/page_00331
begin
--   Manifest
--     PAGE: 00331
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
 p_id=>331
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cajas por Usuario'
,p_alias=>'CAJAS-POR-USUARIO'
,p_step_title=>'Cajas por Usuario'
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
,p_last_upd_yyyymmddhh24miss=>'20230111103825'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77960120978448625)
,p_plug_name=>'Asignar Usuarios Caja'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128755843780239045)
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
 p_id=>wwv_flow_imp.id(129016762954212600)
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
'select c.cod_usuario_caja,',
'        c.cod_usuario_caja nom_us_caja,',
'       c.cod_usuario,',
'       c.cod_usuario nom_user,',
'       c.sector,',
'       c.rowid idreg,',
'       null Eliminar',
'from cc_usuarios_cajas c ',
'where c.cod_empresa= nvl(:P_COD_EMPRESA,''1'')',
'and ( :P331_USUARIO_PRINCIPAL is null or :P331_USUARIO_PRINCIPAL = cod_usuario_caja)',
'and ( :P331_USUARIO is null or :P331_USUARIO = cod_usuario)',
'and ( :P331_SECTOR is null or  :P331_SECTOR = sector)',
'ORDER BY 3 ASC'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P331_USUARIO_PRINCIPAL,P331_USUARIO,P331_SECTOR'
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
 p_id=>wwv_flow_imp.id(77959248062448616)
,p_query_column_id=>1
,p_column_alias=>'COD_USUARIO_CAJA'
,p_column_display_sequence=>10
,p_column_heading=>'Usuario Caja'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77959303115448617)
,p_query_column_id=>2
,p_column_alias=>'NOM_US_CAJA'
,p_column_display_sequence=>20
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct P.NOMBRE NOM,',
'       U.cod_usuario  ',
'from  usuarios u',
'    ,personas p    ',
'where  u.cod_persona=p.cod_persona',
'ORDER BY 1 ASC'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77959401161448618)
,p_query_column_id=>3
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>30
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77959517362448619)
,p_query_column_id=>4
,p_column_alias=>'NOM_USER'
,p_column_display_sequence=>40
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct P.NOMBRE NOM,',
'       U.cod_usuario  ',
'from  usuarios u',
'    ,personas p    ',
'where  u.cod_persona=p.cod_persona',
'ORDER BY 1 ASC'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77959636449448620)
,p_query_column_id=>5
,p_column_alias=>'SECTOR'
,p_column_display_sequence=>50
,p_column_heading=>'Sector'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77959865764448622)
,p_query_column_id=>6
,p_column_alias=>'IDREG'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77959789987448621)
,p_query_column_id=>7
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>60
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P331_COD_ELIMINAR'',''#IDREG#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
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
'END; '))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80525009325692505)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(128755843780239045)
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
 p_id=>wwv_flow_imp.id(77960945134448633)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(77960120978448625)
,p_button_name=>'guardar'
,p_button_static_id=>'save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_column_span=>3
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(80527797680692507)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(128755843780239045)
,p_button_name=>'NUEVO'
,p_button_static_id=>'btnew'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77960206482448626)
,p_name=>'P331_NUEVO_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77960120978448625)
,p_prompt=>'Usuario Caja'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct P.NOMBRE ||''(''||U.cod_usuario||'')'' NOM,',
'       U.cod_usuario  ',
'from  usuarios u',
'    ,personas p    ',
'where  u.cod_persona=p.cod_persona',
' and u.estado=''A''',
'ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77960316826448627)
,p_name=>'P331_NUEVO_USUARIO_CAJA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77960120978448625)
,p_prompt=>'Usuario Principal '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct P.NOMBRE ||''(''||U.cod_usuario||'')'' NOM,',
'       U.cod_usuario  ',
'from  usuarios u',
'    ,personas p    ',
'where  u.cod_persona=p.cod_persona',
' and u.estado=''A''',
'ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77960439763448628)
,p_name=>'P331_NUEVO_SECTOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(77960120978448625)
,p_prompt=>'SECTOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80525488875692505)
,p_name=>'P331_USUARIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128755843780239045)
,p_prompt=>'USUARIO VINCULADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct P.NOMBRE||'' (''||u.Cod_Usuario ||'') '' NOM,',
'       U.cod_usuario iduser',
'from cc_usuarios_cajas c',
'    ,usuarios u',
'    ,personas p    ',
'where c.cod_usuario=u.cod_usuario',
'AND u.cod_persona=p.cod_persona',
'ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80525894685692506)
,p_name=>'P331_USUARIO_PRINCIPAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128755843780239045)
,p_prompt=>'USUARIO PRINCIPAL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct P.NOMBRE||'' (''||u.Cod_Usuario ||'') '' NOM,',
'       U.cod_usuario iduser',
'from cc_usuarios_cajas c',
'    ,usuarios u',
'    ,personas p    ',
'where c.cod_usuario_caja=u.cod_usuario',
'AND u.cod_persona=p.cod_persona',
'ORDER BY 1 ASC'))
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
 p_id=>wwv_flow_imp.id(80526203635692506)
,p_name=>'P331_SECTOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128755843780239045)
,p_prompt=>'SECTOR'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SECTOR DESCRIP, SECTOR COD',
'from cc_usuarios_cajas '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80526676822692506)
,p_name=>'P331_COD_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(128755843780239045)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80533068286692512)
,p_name=>'da_eliminar_prov'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P331_COD_ELIMINAR'
,p_condition_element=>'P331_COD_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80533503477692512)
,p_event_id=>wwv_flow_imp.id(80533068286692512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el Registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80534006605692512)
,p_event_id=>wwv_flow_imp.id(80533068286692512)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        delete inv.cc_usuarios_cajas',
'         where cod_empresa = nvl(:p_cod_empresa,''1'')',
'           and rowid = :P331_COD_ELIMINAR ;',
'           commit;',
'exception ',
'    when others then',
'     raise_application_error(-20000, ''Error al itentar eliminar el registro - '' || sqlerrm );',
'end;'))
,p_attribute_02=>'P331_COD_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80534514295692513)
,p_event_id=>wwv_flow_imp.id(80533068286692512)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77959929821448623)
,p_name=>'DA_SUBMIT'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80525009325692505)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77960062768448624)
,p_event_id=>wwv_flow_imp.id(77959929821448623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77960704980448631)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(80527797680692507)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77961101381448635)
,p_event_id=>wwv_flow_imp.id(77960704980448631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P331_NUEVO_USUARIO_CAJA,P331_NUEVO_USUARIO,P331_NUEVO_SECTOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77960860737448632)
,p_event_id=>wwv_flow_imp.id(77960704980448631)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77960120978448625)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80983843665773705)
,p_name=>'da_guardar'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77960945134448633)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80983982506773706)
,p_event_id=>wwv_flow_imp.id(80983843665773705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P331_NUEVO_USUARIO_CAJA is null then',
'--- error-- ',
'raise_application_error(-20000, ''Debe seleccionar un Usuario Principal para la Caja'' );',
'',
'else',
'    if :P331_NUEVO_USUARIO is null then',
'    ---- error----- ',
'    raise_application_error(-20000, ''Debe seleccionar el Usuario de Caja''  );',
'    else ',
'            declare ',
'                dummy varchar2(1);',
'            begin ',
'                select distinct ''1''',
'                into dummy                     ',
'                from cc_usuarios_cajas ',
'                where cod_usuario_caja= :P331_NUEVO_USUARIO_CAJA',
'                and   cod_usuario= :P331_NUEVO_USUARIO',
'                and   cod_empresa= nvl(:P_COD_EMPRESA,''1'');',
'                 ',
'                     raise_application_error(-20000, ''Ya existe el usuario Principal para esa caja'' );',
'            exception',
'                when no_data_found then            ',
'                    begin',
'                        insert into inv.cc_usuarios_cajas',
'                          (cod_empresa, cod_usuario, cod_usuario_caja, sector)',
'                        values',
'                          (nvl(:P_COD_EMPRESA,''1''), :P331_NUEVO_usuario, :P331_NUEVO_usuario_caja, :P331_NUEVO_sector);',
'                        commit;',
'                    exception',
'                        when others then',
'                              raise_application_error(-20000, ''Error al intentar guardar los datos''  );',
'                    end;',
'                when others then                     ',
'                     raise_application_error(-20000, ''Error al intentar consultar la tabla''  );',
'            end; ',
'    end if;',
'end if;'))
,p_attribute_02=>'P331_NUEVO_USUARIO_CAJA,,P331_NUEVO_USUARIO,P331_NUEVO_SECTOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80984412660773711)
,p_event_id=>wwv_flow_imp.id(80983843665773705)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80984198604773708)
,p_name=>'da_change'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P331_ALERT'
,p_condition_element=>'P331_ALERT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80984295312773709)
,p_event_id=>wwv_flow_imp.id(80984198604773708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P331_ALERT.'
,p_attribute_02=>unistr('Atenci\00F3n')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80984390248773710)
,p_event_id=>wwv_flow_imp.id(80984198604773708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P331_ALERT'
);
wwv_flow_imp.component_end;
end;
/
