prompt --application/pages/page_00426
begin
--   Manifest
--     PAGE: 00426
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
 p_id=>426
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Repartidores Para Menu Movil'
,p_alias=>'RPREPAMM'
,p_step_title=>'Repartidores Para Menu Movil'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 43;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-title {',
'    font-size: 20px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230316170539'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126596316833441501)
,p_plug_name=>unistr('Repartidores Para Menu M\00F3vil')
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA, ',
'        COD_REPARTIDOR,',
'        NOMBRE, ',
'        TELEFONO, ',
'        FEC_ALTA, ',
'        FEC_BLOQUEO, ',
'        COD_EMPLEADO, ',
'        COD_EMPLEADO C_EMPLEADO,',
'        TIPO, ',
'        APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => ROWID,',
'                    p_attributes  => (case ACTIVO',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar(this)" disabled'' )as ACTIVO,',
'        null EDITAR,',
'        null eliminar,',
'        ROWID',
'     from RP_REPARTIDORES_LOG',
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
,p_prn_page_header=>'CA_REPART'
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
 p_id=>wwv_flow_imp.id(126596661791441504)
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
,p_internal_uid=>126596661791441504
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126596851782441506)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126596950245441507)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Repartidor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(37200438290473905)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126597010867441508)
,p_db_column_name=>'NOMBRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126597158590441509)
,p_db_column_name=>'TELEFONO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Tel\00E9fono')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126597284550441510)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Ingreso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126597483776441512)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Empleado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12499741931502745)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126597579974441513)
,p_db_column_name=>'TIPO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126597718263441515)
,p_db_column_name=>'ACTIVO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126597817444441516)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P426_EDITAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(126597916617441517)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P426_ELIMINAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(126598393214441521)
,p_db_column_name=>'FEC_BLOQUEO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fec Bloqueo'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126598446473441522)
,p_db_column_name=>'C_EMPLEADO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(126598515194441523)
,p_db_column_name=>'ROWID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(126619231200332305)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1266193'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_REPARTIDOR:NOMBRE:TELEFONO:FEC_ALTA:FEC_BLOQUEO:TIPO:C_EMPLEADO:COD_EMPLEADO:ACTIVO:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126598094392441518)
,p_plug_name=>'Editar/Agregar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126600663511441544)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(126598094392441518)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(126600510615441543)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(126598094392441518)
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
 p_id=>wwv_flow_imp.id(126596589722441503)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(126596316833441501)
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
 p_id=>wwv_flow_imp.id(126548176464538902)
,p_name=>'P426_COD_FORMA'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126598635039441524)
,p_name=>'P426_ELIMINAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126596316833441501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126598734444441525)
,p_name=>'P426_EDITAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126596316833441501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126598845632441526)
,p_name=>'P426_REPARTIDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126598094392441518)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_REPARTIDORES_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, r.cod_repartidor R, r.cod_repartidor DIS',
'from rp_repartidores r, personas p ',
'where r.cod_empresa = :P_COD_EMPRESA',
'and r.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126598975448441527)
,p_name=>'P426_NOMBRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126598094392441518)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126599249375441530)
,p_name=>'P426_TIPO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(126598094392441518)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TIPOS_PROV_FLETES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  ',
'select t.descripcion, t.descripcion cod ',
'    from RP_TIPOS_PROV_FLETES t ',
'    where t.cod_empresa = :p_cod_empresa'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Seleccionar--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126599320228441531)
,p_name=>'P426_ACTIVO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(126598094392441518)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_ESTADOS_S/N'
,p_lov=>'.'||wwv_flow_imp.id(127070015180645387)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126599439700441532)
,p_name=>'P426_TELEFONO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(126598094392441518)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(126599801125441536)
,p_name=>'P426_COD_EMPLEADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(126598094392441518)
,p_prompt=>'Empleado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPLEADOS_COD_NOM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT E.COD_EMPLEADO|| '' -'' ||  P.NOMBRE d,',
'       E.COD_EMPLEADO r',
'FROM RH_EMPLEADOS E, PERSONAS P',
'WHERE E.COD_EMPRESA=''1''',
'AND E.COD_PERSONA=P.COD_PERSONA',
'AND E.ACTIVO=''S''',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(126600307459441541)
,p_name=>'P426_FECHA_BLOQUEO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(126598094392441518)
,p_prompt=>'Fecha de Bloqueo'
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
 p_id=>wwv_flow_imp.id(126600469029441542)
,p_name=>'P426_FECHA_ALTA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(126598094392441518)
,p_prompt=>'Fecha de Alta'
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
 p_id=>wwv_flow_imp.id(127027578223211510)
,p_name=>'P426_ERR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126596316833441501)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126598182757441519)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126596589722441503)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127027496622211509)
,p_event_id=>wwv_flow_imp.id(126598182757441519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P426_FECHA_ALTA := null;',
':P426_REPARTIDOR := null;',
':P426_NOMBRE := null;',
':P426_COD_EMPLEADO := null;',
':P426_TELEFONO := null;',
':P426_ACTIVO := null;',
':P426_TIPO := null;',
':P426_FECHA_BLOQUEO := null;',
''))
,p_attribute_03=>'P426_FECHA_ALTA,P426_REPARTIDOR,P426_NOMBRE,P426_COD_EMPLEADO,P426_TELEFONO,P426_ACTIVO,P426_TIPO,P426_FECHA_BLOQUEO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126598227146441520)
,p_event_id=>wwv_flow_imp.id(126598182757441519)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126598094392441518)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126600896766441546)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P426_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126601010870441548)
,p_event_id=>wwv_flow_imp.id(126600896766441546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Deseas eliminar este registro?'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126600900877441547)
,p_event_id=>wwv_flow_imp.id(126600896766441546)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    delete RP_REPARTIDORES_LOG',
'    where ROWID = :P426_ELIMINAR;',
'',
'EXCEPTION',
'    when others then apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P426_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126601171110441549)
,p_event_id=>wwv_flow_imp.id(126600896766441546)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126596316833441501)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126601202277441550)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P426_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127027302796211508)
,p_event_id=>wwv_flow_imp.id(126601202277441550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select COD_REPARTIDOR, ',
'            NOMBRE,',
'            TELEFONO, ',
'            FEC_ALTA, ',
'            COD_EMPLEADO, ',
'            TIPO, ',
'            ACTIVO, ',
'            FEC_BLOQUEO',
'     into :P426_REPARTIDOR,',
'           :P426_NOMBRE,',
'           :P426_TELEFONO,',
'           :P426_FECHA_ALTA,     ',
'           :P426_COD_EMPLEADO,',
'           :P426_TIPO,',
'           :P426_ACTIVO,',
'           :P426_FECHA_BLOQUEO',
'        from RP_REPARTIDORES_LOG',
'    where ROWID = :P426_EDITAR;',
' ',
' EXCEPTION',
'          when others then ',
'            apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P426_EDITAR'
,p_attribute_03=>'P426_ACTIVO,P426_REPARTIDOR,P426_TIPO,P426_NOMBRE,P426_TELEFONO,P426_COD_EMPLEADO,P426_FECHA_BLOQUEO,P426_FECHA_ALTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126774319420658301)
,p_event_id=>wwv_flow_imp.id(126601202277441550)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126598094392441518)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(126774412051658302)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126600663511441544)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127027097515211505)
,p_event_id=>wwv_flow_imp.id(126774412051658302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126598094392441518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(126774583891658303)
,p_event_id=>wwv_flow_imp.id(126774412051658302)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126598094392441518)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127026603880211501)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(126600510615441543)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127027293978211507)
,p_event_id=>wwv_flow_imp.id(127026603880211501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_EXISTE NUMBER;',
'    V_ERROR_FECHA EXCEPTION;',
'BEGIN',
'   :P426_ERR := null;',
'    IF :P426_REPARTIDOR is not null',
'        and  :P426_NOMBRE is not null',
'        and :P426_TIPO is not null',
'        and :P426_ACTIVO is not null',
'        and :P426_TELEFONO is not null then',
'',
'            IF :P426_FECHA_ALTA IS NOT NULL AND :P426_FECHA_BLOQUEO IS NOT NULL THEN',
'                IF TO_DATE(:P426_FECHA_ALTA, ''DD/MM/YYYY'') >= TO_DATE(:P426_FECHA_BLOQUEO, ''DD/MM/YYYY'') THEN',
'                    :P426_ERR := ''La fecha de alta debe ser menor a la fecha de bloqueo.'';  ',
'                    RAISE V_ERROR_FECHA;',
'                END IF;              ',
'            END IF; ',
'',
'            if :P426_EDITAR is null then',
'                    BEGIN',
'                       select 1',
'                       into v_existe',
'                       from  RP_REPARTIDORES_LOG',
'                       where cod_empresa = :P_COD_EMPRESA ',
'                       and cod_repartidor = :P426_REPARTIDOR;',
'',
'                       :P426_ERR := ''El repartidor ya se encuentra cargado.'';',
'                    EXCEPTION WHEN NO_DATA_FOUND THEN ',
'                        insert into RP_REPARTIDORES_LOG(',
'                           COD_EMPRESA,',
'                           COD_REPARTIDOR,',
'                           NOMBRE,',
'                           TELEFONO,',
'                           FEC_ALTA,',
'                           COD_EMPLEADO,',
'                           TIPO,',
'                           ACTIVO,',
'                           FEC_BLOQUEO',
'                       ) values(',
'                           :P_COD_EMPRESA,',
'                           UPPER(:P426_REPARTIDOR),',
'                           UPPER(:P426_NOMBRE),',
'                           :P426_TELEFONO,',
'                           :P426_FECHA_ALTA,',
'                           :P426_COD_EMPLEADO,',
'                           :P426_TIPO,',
'                           :P426_ACTIVO,',
'                           :P426_FECHA_BLOQUEO',
'                       );',
'                    END;',
'                 ',
'                       ',
'                   else',
'                       -- UPDATE ',
'                      UPDATE RP_REPARTIDORES_LOG',
'                        SET COD_REPARTIDOR = UPPER(:P426_REPARTIDOR),',
'                            NOMBRE = UPPER(:P426_NOMBRE),',
'                            TELEFONO = :P426_TELEFONO,',
'                            FEC_ALTA = :P426_FECHA_ALTA,',
'                            COD_EMPLEADO = :P426_COD_EMPLEADO,',
'                            TIPO = :P426_TIPO,',
'                            ACTIVO = :P426_ACTIVO,',
'                            FEC_BLOQUEO = :P426_FECHA_BLOQUEO',
'                        WHERE ROWID = :P426_EDITAR;',
'',
'            end if; ',
'                ',
'            ',
'    ELSE',
'             case ',
'                      when :P426_REPARTIDOR is null then  :P426_ERR := ''Asignar un repartidor.'';',
'                      when :P426_NOMBRE is null then  :P426_ERR := ''Ingrese un nombre.'';',
'                      when :P426_TIPO is null then  :P426_ERR := ''Seleccione un Tipo.'';',
unistr('                      when :P426_TELEFONO is null then  :P426_ERR := ''Ingrese su tel\00E9fono'';'),
'                else :P426_ERR := ''Completar los items requeridos'';',
'         end case;',
'    END IF;',
'',
'EXCEPTION',
'      when others then ',
'        apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P426_REPARTIDOR,P426_NOMBRE,P426_COD_EMPLEADO,P426_TELEFONO,P426_ACTIVO,P426_FECHA_BLOQUEO,P426_FECHA_ALTA,P426_TIPO'
,p_attribute_03=>'P426_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127026824719211503)
,p_event_id=>wwv_flow_imp.id(127026603880211501)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126596316833441501)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127026718684211502)
,p_event_id=>wwv_flow_imp.id(127026603880211501)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(126598094392441518)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P426_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127027912553211514)
,p_event_id=>wwv_flow_imp.id(127026603880211501)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se guardaron los cambios.'
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P426_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127027651411211511)
,p_name=>'DA_ERR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P426_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127027738522211512)
,p_event_id=>wwv_flow_imp.id(127027651411211511)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P426_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P426_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(120942948438636434)
,p_name=>'DA_SOLO_NUMERO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P426_TELEFONO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120943062154636435)
,p_event_id=>wwv_flow_imp.id(120942948438636434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(126548065300538901)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>':P426_COD_FORMA := ''RP'';'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
