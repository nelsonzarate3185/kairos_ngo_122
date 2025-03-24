prompt --application/pages/page_00330
begin
--   Manifest
--     PAGE: 00330
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
 p_id=>330
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Custodios por Usuario'
,p_alias=>'CUSTODIOS-POR-USUARIO'
,p_step_title=>'Custodios por Usuario'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'//  console.log(cb.value);',
'//    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P330_CHK_RECEP'',''S'');',
'      $s(''P330_CHK_ID'', cb.value,false);',
'  } else {',
'      $s(''P330_CHK_RECEP'',''N'');',
'      $s(''P330_CHK_ID'', cb.value,false);',
'  }',
'}'))
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
,p_last_upd_yyyymmddhh24miss=>'20230112133358'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159871147793721817)
,p_plug_name=>'Asignar Usuarios / Custodios'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(210666870595512237)
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
 p_id=>wwv_flow_imp.id(210927789769485792)
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
'select c.COD_CUSTODIO,',
'       c.COD_CUSTODIO nom_custodio,',
'       c.cod_usuario,',
'       c.cod_usuario nom_user,       ',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       =>  c.rowid,',
'                           p_attributes  => (case C.ind_recepcion',
'                                                when ''S'' then '' checked ''',
'                                                else null',
'                                              end )||:P330_PERMISO_CHK ||'' onclick="seleccionar(this)"'' )as  ind_recepcion,',
'       c.rowid idreg,',
'       null Eliminar',
'from USUARIOS_CUSTODIOS c ',
'where c.cod_empresa= nvl(:P_COD_EMPRESA,''1'')',
'and ( :P330_COD_CUSTODIO is null or :P330_COD_CUSTODIO = COD_CUSTODIO)',
'and ( :P330_USUARIO is null or :P330_USUARIO = cod_usuario) ',
'ORDER BY 3 ASC',
'',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P330_COD_CUSTODIO,P330_USUARIO'
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
 p_id=>wwv_flow_imp.id(80986559220773732)
,p_query_column_id=>1
,p_column_alias=>'COD_CUSTODIO'
,p_column_display_sequence=>80
,p_column_heading=>'Cod. Custodio'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80986699871773733)
,p_query_column_id=>2
,p_column_alias=>'NOM_CUSTODIO'
,p_column_display_sequence=>90
,p_column_heading=>'Nombre Custodio'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct descripcion Custodio,',
'       cod_custodio',
'from  cc_custodios cc',
'where cc.cod_empresa= nvl(:P_COD_EMPRESA,''1'')'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(81913243581273203)
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
 p_id=>wwv_flow_imp.id(81913635721273203)
,p_query_column_id=>4
,p_column_alias=>'NOM_USER'
,p_column_display_sequence=>40
,p_column_heading=>'Cod. - Nombre Persona '
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct u.cod_persona||'' - ''|| P.NOMBRE NOM,',
'       U.cod_usuario  ',
'from  usuarios u',
'    ,personas p    ',
'where  u.cod_persona=p.cod_persona',
'ORDER BY 1 ASC'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(80986762258773734)
,p_query_column_id=>5
,p_column_alias=>'IND_RECEPCION'
,p_column_display_sequence=>100
,p_column_heading=>'Recepcion'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(81911698009273200)
,p_query_column_id=>6
,p_column_alias=>'IDREG'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(81912074312273202)
,p_query_column_id=>7
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>110
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P330_COD_ELIMINAR'',''#IDREG#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
'END; ',
''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(81914752584273205)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(210666870595512237)
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
 p_id=>wwv_flow_imp.id(81917498732273208)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(159871147793721817)
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
 p_id=>wwv_flow_imp.id(81915107924273205)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(210666870595512237)
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
 p_id=>wwv_flow_imp.id(80986833214773735)
,p_name=>'P330_CHK_RECEP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(210666870595512237)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80986902416773736)
,p_name=>'P330_CHK_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(210666870595512237)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80988221361773749)
,p_name=>'P330_PERMISO_CHK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(210666870595512237)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN ''disabled'';',
'    ELSE',
'        RETURN '''';',
'    END IF;                                                     ',
'END; ',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81915515080273206)
,p_name=>'P330_COD_CUSTODIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(210666870595512237)
,p_prompt=>'CUSTODIO'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cc.descripcion ||'' - ''||uc.cod_custodio Custodio,',
'       uc.cod_custodio',
'from USUARIOS_CUSTODIOS uc,',
'     cc_custodios cc',
'where uc.cod_empresa= nvl(:P_COD_EMPRESA,''1'')',
'and   uc.cod_empresa=cc.cod_empresa',
'and   uc.cod_custodio=cc.cod_custodio',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- TODOS -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(81915954913273207)
,p_name=>'P330_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(210666870595512237)
,p_prompt=>'USUARIO '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct P.NOMBRE||'' (''||u.Cod_Usuario ||'') '' NOM,',
'       U.cod_usuario iduser',
'from USUARIOS_CUSTODIOS c',
'    ,usuarios u',
'    ,personas p    ',
'where c.cod_usuario=u.cod_usuario',
'AND u.cod_persona=p.cod_persona',
'ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- TODOS -'
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
 p_id=>wwv_flow_imp.id(81916723914273208)
,p_name=>'P330_COD_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(210666870595512237)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81917835200273208)
,p_name=>'P330_NUEVO_CUSTODIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(159871147793721817)
,p_prompt=>'Custodio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cod_custodio||'' - ''||descripcion Custodio,',
'       cod_custodio',
'from  cc_custodios cc',
'where cc.cod_empresa=''1'' '))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(81918263563273209)
,p_name=>'P330_NUEVO_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(159871147793721817)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct P.NOMBRE ||''(''||U.cod_usuario||'')'' NOM,',
'       U.cod_usuario  ',
'from  usuarios u',
'    ,personas p    ',
'where  u.cod_persona=p.cod_persona',
' and u.estado=''A''',
'ORDER BY 1 ASC'))
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
 p_id=>wwv_flow_imp.id(81918686962273209)
,p_name=>'P330_RECEPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(159871147793721817)
,p_prompt=>'Permite Recepcionar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81924134778273213)
,p_name=>'da_eliminar_reg'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P330_COD_ELIMINAR'
,p_condition_element=>'P330_COD_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80987225376773739)
,p_event_id=>wwv_flow_imp.id(81924134778273213)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el Registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80987345633773740)
,p_event_id=>wwv_flow_imp.id(81924134778273213)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        delete inv.USUARIOS_CUSTODIOS ',
'         where cod_empresa = nvl(:p_cod_empresa,''1'')',
'           and rowid = :P330_COD_ELIMINAR ;',
'           commit;',
'exception ',
'    when others then',
'     raise_application_error(-20000, ''Error al itentar eliminar el registro - '' || sqlerrm );',
'end;'))
,p_attribute_02=>'P330_COD_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80987626332773743)
,p_event_id=>wwv_flow_imp.id(81924134778273213)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P330_COD_ELIMINAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80987402915773741)
,p_event_id=>wwv_flow_imp.id(81924134778273213)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81919042377273210)
,p_name=>'DA_SUBMIT'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81914752584273205)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81919570329273211)
,p_event_id=>wwv_flow_imp.id(81919042377273210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81919980673273211)
,p_name=>'da_llama_nuevo'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81915107924273205)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81920462205273211)
,p_event_id=>wwv_flow_imp.id(81919980673273211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P330_NUEVO_CUSTODIO,P330_NUEVO_USUARIO,P330_RECEPCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81920964994273212)
,p_event_id=>wwv_flow_imp.id(81919980673273211)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(159871147793721817)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(81921369999273212)
,p_name=>'da_guardar'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(81917498732273208)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81921808100273212)
,p_event_id=>wwv_flow_imp.id(81921369999273212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P330_NUEVO_USUARIO  is null then',
'--- error-- ',
'raise_application_error(-20000, ''Debe seleccionar el Usuario'' );',
'',
'else',
'    if :P330_NUEVO_CUSTODIO is null then',
'    ---- error----- ',
'    raise_application_error(-20000, ''Debe seleccionar el Custodio''  );',
'    else ',
'            declare ',
'                dummy varchar2(1);',
'            begin ',
'                select distinct ''1''',
'                into dummy                     ',
'                from USUARIOS_CUSTODIOS ',
'                where cod_CUSTODIO= :P330_NUEVO_CUSTODIO',
'                and   cod_usuario= :P330_NUEVO_USUARIO',
'                and   cod_empresa= nvl(:P_COD_EMPRESA,''1'');',
'                 ',
'                     raise_application_error(-20000, ''Ya existe el usuario Principal para esa caja'' );',
'            exception',
'                when no_data_found then            ',
'                    begin',
'                        insert into inv.USUARIOS_CUSTODIOS',
'                          (cod_empresa, cod_usuario, cod_CUSTODIO, IND_RECEPCION)',
'                        values',
'                          (nvl(:P_COD_EMPRESA,''1''), :P330_NUEVO_usuario, :P330_NUEVO_CUSTODIO, :P330_RECEPCION);',
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
,p_attribute_02=>'P330_NUEVO_CUSTODIO,,P330_NUEVO_USUARIO,P330_RECEPCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81922392122273212)
,p_event_id=>wwv_flow_imp.id(81921369999273212)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(80987041903773737)
,p_name=>'Da_actualiza_recep'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P330_CHK_ID'
,p_condition_element=>'P330_CHK_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81924603094273213)
,p_event_id=>wwv_flow_imp.id(80987041903773737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Actualizar el Registro?')
,p_attribute_02=>'Recepciona Si/No'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81925146346273214)
,p_event_id=>wwv_flow_imp.id(80987041903773737)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P330_CHK_ID is not null and :P330_CHK_RECEP is not null then',
'        begin',
'                UPDATE inv.USUARIOS_CUSTODIOS ',
'                   SET IND_RECEPCION = :P330_CHK_RECEP',
'                 where cod_empresa = nvl(:p_cod_empresa,''1'')',
'                   and rowid = :P330_CHK_ID ;',
'                   commit;',
'        exception ',
'            when others then',
'             raise_application_error(-20000, ''Error al itentar eliminar el registro - '' || sqlerrm );',
'        end;',
'else',
'',
'             raise_application_error(-20000, ''Error al itentar actualizar - Acccion/ID no especificado'' );',
'end if;'))
,p_attribute_02=>'P330_CHK_RECEP,P330_CHK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(80987562315773742)
,p_event_id=>wwv_flow_imp.id(80987041903773737)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P330_CHK_ID,P330_CHK_RECEP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(81925614926273214)
,p_event_id=>wwv_flow_imp.id(80987041903773737)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
