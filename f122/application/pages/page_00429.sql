prompt --application/pages/page_00429
begin
--   Manifest
--     PAGE: 00429
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
 p_id=>429
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Repartidores'
,p_alias=>'RPREPART'
,p_step_title=>'Repartidores'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230316182859'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127790135305586602)
,p_plug_name=>'Repartidores'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA, ',
'        COD_REPARTIDOR,',
'        COD_PERSONA,',
'        FEC_INGRESO,',
'        APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => ROWID,',
'                    p_attributes  => (case ACTIVO',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar(this)" disabled'' )as ACTIVO,',
'        (              ',
'	            select p.nombre ',
'                from personas p',
'                where p.cod_persona = r.COD_PERSONA ',
'                and rownum = 1',
'        ) DESC_REPARTIDOR,',
'        null EDITAR,',
'        null eliminar,',
'        ROWID',
'     from RP_REPARTIDORES r',
' where COD_EMPRESA = :P_COD_EMPRESA',
'order by to_number(cod_repartidor) desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Repartidores'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(127790688957586607)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>127790688957586607
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127790763001586608)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127790802353586609)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Repartidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127790970513586610)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Persona'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127791116594586612)
,p_db_column_name=>'FEC_INGRESO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Ingreso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127791249854586613)
,p_db_column_name=>'ACTIVO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127791359518586614)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P429_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127791449893586615)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P429_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127791520093586616)
,p_db_column_name=>'ROWID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128258653957955816)
,p_db_column_name=>'DESC_REPARTIDOR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(127811395223513170)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1278114'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'EDITAR:COD_REPARTIDOR:COD_PERSONA:DESC_REPARTIDOR:FEC_INGRESO:ACTIVO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127791640455586617)
,p_plug_name=>'Editar/Agregar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127793675828586637)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127791640455586617)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127793570435586636)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127791640455586617)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127793171139586632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127790135305586602)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127791786481586618)
,p_name=>'P429_EDITAR'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127791800984586619)
,p_name=>'P429_ELIMINAR'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127792597549586626)
,p_name=>'P429_COD_REPARTIDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(127791640455586617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127792610266586627)
,p_name=>'P429_COD_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(127791640455586617)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127792817257586629)
,p_name=>'P429_FEC_INGRESO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(127791640455586617)
,p_prompt=>'Fecha de Ingreso'
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
 p_id=>wwv_flow_imp.id(127792991210586630)
,p_name=>'P429_ACTIVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(127791640455586617)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ACTIVO;S,INACTIVO;N'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128257678652955806)
,p_name=>'P429_ERR'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128258889166955818)
,p_name=>'P429_COD_EMPRESA'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128258948136955819)
,p_name=>'P429_COD_USUARIO'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128259056593955820)
,p_name=>'P429_COD_SUCURSAL'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127791946106586620)
,p_name=>'DA_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P429_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127792038790586621)
,p_event_id=>wwv_flow_imp.id(127791946106586620)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127791640455586617)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127793033511586631)
,p_event_id=>wwv_flow_imp.id(127791946106586620)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select COD_REPARTIDOR, ',
'            COD_PERSONA,',
'            FEC_INGRESO,',
'            ACTIVO',
'     into :P429_COD_REPARTIDOR,',
'          :P429_COD_PERSONA,',
'          :P429_FEC_INGRESO,',
'          :P429_ACTIVO',
'        from RP_REPARTIDORES',
'        where ROWID = :P429_EDITAR;',
'  ',
' EXCEPTION',
'          when others then ',
'            apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P429_EDITAR,P429_COD_PERSONA'
,p_attribute_03=>'P429_COD_REPARTIDOR,P429_COD_PERSONA,P429_FEC_INGRESO,P429_ACTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127792138664586622)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P429_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127792294599586623)
,p_event_id=>wwv_flow_imp.id(127792138664586622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el repartidor seleccionado?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128258073531955810)
,p_event_id=>wwv_flow_imp.id(127792138664586622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_existe number;',
'	v_error_vehiculo exception;',
'	v_error_servicio exception;',
'    v_error_combustible exception;',
'    v_repartidor number;',
'begin',
'',
'        select cod_repartidor ',
'        into v_repartidor ',
'        from rp_repartidores',
'        where ROWID = :P429_ELIMINAR;',
'',
'	begin ',
'         select 1 ',
'         into v_existe',
'         from rp_vehiculos',
'         where cod_repartidor =v_repartidor',
'         and rownum = 1;',
'	     ',
'		 raise v_error_vehiculo;		',
'	exception',
'		when no_data_found then',
'			 null;',
'	end;',
'	',
'	begin ',
'         select 1 ',
'         into v_existe',
'         from rp_orden_servicio',
'         where cod_repartidor = v_repartidor',
'          and rownum = 1;',
'		 ',
'		raise v_error_servicio;		',
'	exception',
'		when no_data_found then',
'		   null;',
'',
'	end;',
'',
'    begin ',
'             select 1 ',
'             into v_existe',
'             from RP_COMBUSTIBLES',
'             where cod_chofer = v_repartidor',
'              and rownum = 1;',
'    		 ',
'    		raise v_error_combustible;		',
'    	exception',
'    		when no_data_found then',
'    		   null;',
'',
'	end;',
'    ',
'        delete RP_REPARTIDORES',
'               where ROWID = :P429_ELIMINAR;',
'',
'exception ',
'	when v_error_vehiculo then',
'		:P429_ERR :=  ''No se puede eliminar. Existe un vehiculo asignado a este repartidor'' ;',
'	when v_error_servicio then ',
'		:P429_ERR :=  ''No se puede eliminar. Existe una orden de servicio asignada a este repartidor'' ;',
'    when v_error_combustible then ',
'		:P429_ERR :=  ''No se puede eliminar. Existe un chofer asignado a este repartidor'' ;',
'	when others then ',
'	    :p429_err :=  ''Ha ocurrido un error al eliminar.''; ',
'end;'))
,p_attribute_02=>'P429_ELIMINAR'
,p_attribute_03=>'P429_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127794043344586641)
,p_event_id=>wwv_flow_imp.id(127792138664586622)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127790135305586602)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127793239910586633)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127793171139586632)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127793482117586635)
,p_event_id=>wwv_flow_imp.id(127793239910586633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P429_ACTIVO := null;',
':P429_FEC_INGRESO := null;',
':P429_COD_PERSONA:= null;',
''))
,p_attribute_03=>'P429_FEC_INGRESO,P429_COD_PERSONA,P429_ACTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127793392472586634)
,p_event_id=>wwv_flow_imp.id(127793239910586633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127791640455586617)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127793712372586638)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127793675828586637)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127793849619586639)
,p_event_id=>wwv_flow_imp.id(127793712372586638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127791640455586617)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127794167821586642)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127793570435586636)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128257731517955807)
,p_event_id=>wwv_flow_imp.id(127794167821586642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_EXISTE NUMBER;',
'    V_COD_REPARTIDOR NUMBER;',
'BEGIN',
'',
'    select nvl(max(to_number(cod_repartidor)) +1,1) ',
'    into v_cod_repartidor ',
'    from rp_repartidores where cod_empresa = :p_cod_empresa;',
'      ',
'   :P429_ERR := null;',
'',
'    IF :P429_COD_PERSONA is not null',
'        and  :P429_FEC_INGRESO is not null then',
'',
'            if :P429_EDITAR is null then',
'                    BEGIN',
'                       select 1',
'                       into v_existe',
'                       from  RP_REPARTIDORES',
'                       where cod_empresa = :P_COD_EMPRESA ',
'                       and cod_repartidor = :P429_COD_REPARTIDOR;',
'                     ',
'                      :P429_ERR := ''El repartidor ya existe.'';',
'                      ',
'                    EXCEPTION WHEN NO_DATA_FOUND THEN ',
'                     ',
'                        insert into RP_REPARTIDORES(',
'                           COD_EMPRESA,',
'                           COD_REPARTIDOR,',
'                           COD_PERSONA,',
'                           FEC_INGRESO,',
'                           ACTIVO',
'                       ) values(',
'                           :P_COD_EMPRESA,',
'                            V_COD_REPARTIDOR,',
'                           :P429_COD_PERSONA,',
'                           to_date(:P429_FEC_INGRESO, ''DD/MM/YYYY''),',
'                           :P429_ACTIVO',
'                       );',
'                    END;',
'                ',
'            else',
'                       -- UPDATE ',
'                      UPDATE RP_REPARTIDORES',
'                        SET COD_PERSONA = :P429_COD_PERSONA,',
'                            FEC_INGRESO= to_date(:P429_FEC_INGRESO, ''DD/MM/YYYY''),',
'                            ACTIVO = :P429_ACTIVO',
'                        WHERE ROWID = :P429_EDITAR;',
'',
'            end if; ',
'                ',
'            ',
'    ELSE',
'             case ',
'                      when :P429_COD_PERSONA is null then  :P429_ERR := ''Ingrese una persona.'';',
'                      when :P429_FEC_INGRESO is null then  :P429_ERR := ''Seleccione una fecha de ingreso.'';',
'                  ',
'                else :P429_ERR := ''Completar los items requeridos'';',
'         end case;',
'    END IF;',
'',
'EXCEPTION',
'      when others then ',
'        apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P429_COD_REPARTIDOR,P429_COD_PERSONA,P429_FEC_INGRESO,P429_ACTIVO'
,p_attribute_03=>'P429_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127794290036586643)
,p_event_id=>wwv_flow_imp.id(127794167821586642)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127790135305586602)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P429_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127794534696586646)
,p_event_id=>wwv_flow_imp.id(127794167821586642)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127791640455586617)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P429_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128258122745955811)
,p_event_id=>wwv_flow_imp.id(127794167821586642)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se registraron los cambios.'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P429_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128257846751955808)
,p_name=>'DA_ERR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P429_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128257993458955809)
,p_event_id=>wwv_flow_imp.id(128257846751955808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P429_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P429_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(128258727171955817)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P429_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P429_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P429_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
