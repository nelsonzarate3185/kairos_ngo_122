prompt --application/pages/page_00497
begin
--   Manifest
--     PAGE: 00497
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
 p_id=>497
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Agenda -   CAAGENDA'
,p_alias=>'AGENDA3'
,p_step_title=>'Agenda -   CAAGENDA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230418165048'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147212454357436539)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147921868872619419)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148012838785078408)
,p_plug_name=>'Agenda -   CAAGENDA'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147211007472436525)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(148012838785078408)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1010
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.COD_AGENDA,',
'       (select p.cod_persona',
'from inv.rh_empleados e,',
'     personas p',
'where e.cod_empresa=''1''',
'and   e.activo=''S''',
'and   e.cod_persona=p.cod_persona',
'and 	e.cod_empleado = c.cod_empleado ) COD_PERSONA,',
'       c.NOMBRE_CONTACTO,',
'       c.DIRECCION,',
'       c.COD_CUIDAD,',
'       c.NRO_TELEFONO,',
'       c.NRO_CELULAR,',
'       c.CORREO_MAIL,',
'       c.COD_EMPLEADO,',
'       c.COD_SECCION,',
'       c.COD_SUCURSAL,',
'       c.AREA,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  from AGENDA c',
'  WHERE COD_EMPLEADO IS NOT NULL AND (:P497_filtro is null or ',
'(UPPER(NOMBRE_CONTACTO) like upper(''%''||:P497_filtro||''%'') ',
'AND :P497_RBG = ''N'')',
'OR ',
'(UPPER(NRO_TELEFONO) like upper(''%''||:P497_filtro||''%'') ',
'AND :P497_RBG = ''T'')',
'OR ',
'(UPPER(NRO_CELULAR) like upper(''%''||:P497_filtro||''%'') ',
'AND :P497_RBG = ''C'')',
'OR ',
'(UPPER(AREA) like upper(''%''||:P497_filtro||''%'') ',
'AND :P497_RBG = ''A''))',
'and cod_empleado in (select cod_empleado ',
'                     from rh_empleados d',
'                     where d.cod_empresa =  :P_cod_empresa ',
'                     and d.activo = ''S'' )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P497_RBG,P497_FILTRO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT'
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
 p_id=>wwv_flow_imp.id(147211163424436526)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>147211163424436526
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147211278509436527)
,p_db_column_name=>'COD_AGENDA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Agenda'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147211338315436528)
,p_db_column_name=>'NOMBRE_CONTACTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147211427130436529)
,p_db_column_name=>'DIRECCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147211579765436530)
,p_db_column_name=>'COD_CUIDAD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Cuidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147211641600436531)
,p_db_column_name=>'NRO_TELEFONO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Interno'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147211715451436532)
,p_db_column_name=>'NRO_CELULAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('N\00B0 Celular')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147211856886436533)
,p_db_column_name=>'CORREO_MAIL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Correo Mail'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147211950960436534)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Empleado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147212007924436535)
,p_db_column_name=>'COD_SECCION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Seccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147212182400436536)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147212273533436537)
,p_db_column_name=>'AREA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Area'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147920653444619407)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147920769587619408)
,p_db_column_name=>'ROWID'
,p_display_order=>130
,p_column_identifier=>'M'
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
 p_id=>wwv_flow_imp.id(147920892416619409)
,p_db_column_name=>'EDITAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P497_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(147920932916619410)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P497_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(147913512109678844)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1479136'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_PERSONA:NOMBRE_CONTACTO:NRO_TELEFONO:NRO_CELULAR:AREA:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(147920544882619406)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(148012838785078408)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_plug_grid_column_span=>7
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147921003452619411)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(147920544882619406)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147923200709619433)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(147921868872619419)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147922946067619430)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(147921868872619419)
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
 p_id=>wwv_flow_imp.id(147921673907619417)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(147211007472436525)
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
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147212530324436540)
,p_name=>'P497_FILTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147920544882619406)
,p_prompt=>'Filtro (AREA/CONTACTO/TELEFONO/CELULAR)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147212604964436541)
,p_name=>'P497_NIVEL_CTA_NO_DEDU'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147212768254436542)
,p_name=>'P497_DERECHOS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147212834885436543)
,p_name=>'P497_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147212994582436544)
,p_name=>'P497_NOM_MODULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147213059896436545)
,p_name=>'P497_COD_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147213130218436546)
,p_name=>'P497_NOM_FORMA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147213281076436547)
,p_name=>'P497_COD_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147213385593436548)
,p_name=>'P497_NOM_EMPRESA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147213426132436549)
,p_name=>'P497_COD_SUCURSAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147213571230436550)
,p_name=>'P497_COD_EJERCICIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147920061454619401)
,p_name=>'P497_NOM_SUCURSAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147920120974619402)
,p_name=>'P497_COD_USUARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147920205067619403)
,p_name=>'P497_COD_IDIOMA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147920323932619404)
,p_name=>'P497_CODSISMENU'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(147212454357436539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147920411969619405)
,p_name=>'P497_RBG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147920544882619406)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:CONTACTO;N,TELEFONO;T,CELULAR;C,AREA;A'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147921452325619415)
,p_name=>'P497_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147211007472436525)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147921556792619416)
,p_name=>'P497_ELIMINAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147211007472436525)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147921715729619418)
,p_name=>'P497_ERR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(147211007472436525)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147921992390619420)
,p_name=>'P497_COD_EMPLEADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(147921868872619419)
,p_prompt=>'Cod Empleado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_COD_EMPLEADO_AGENDA3'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado,',
'       p.cod_persona,',
'       nvl(p.nombre,p.nomb_fantasia) nombre,',
'       e.cod_seccion,',
'       p.direc_electronica,',
'       e.cod_sucursal',
'from inv.rh_empleados e,',
'     personas p',
'where e.cod_empresa=''1''',
'and   e.activo=''S''',
'and   e.cod_persona=p.cod_persona',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147922036118619421)
,p_name=>'P497_COD_AGENDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(147921868872619419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147922192911619422)
,p_name=>'P497_COD_PERSONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(147921868872619419)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147922210475619423)
,p_name=>'P497_NOMBRE_CONTACTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(147921868872619419)
,p_prompt=>'Nombre Contacto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147922368266619424)
,p_name=>'P497_NRO_TELEFONO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(147921868872619419)
,p_prompt=>'Nro Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147922465140619425)
,p_name=>'P497_NRO_CELULAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(147921868872619419)
,p_prompt=>'Nro Celular'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147922548636619426)
,p_name=>'P497_CORREO_MAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(147921868872619419)
,p_prompt=>'Correo Mail'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147922608400619427)
,p_name=>'P497_COD_SECCION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(147921868872619419)
,p_prompt=>'Cod Seccion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT DISTINCT COD_SECCION FROM AGENDA'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(147922849574619429)
,p_name=>'P497_AREA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(147921868872619419)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT DISTINCT AREA FROM AGENDA'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147921110677619412)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147921003452619411)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147921206608619413)
,p_event_id=>wwv_flow_imp.id(147921110677619412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P497_RBG,P497_FILTRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147921365276619414)
,p_event_id=>wwv_flow_imp.id(147921110677619412)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147211007472436525)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147923369230619434)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147921673907619417)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148012938814078409)
,p_event_id=>wwv_flow_imp.id(147923369230619434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P497_AREA,P497_NOMBRE_CONTACTO,P497_COD_SECCION,P497_NRO_TELEFONO,P497_NRO_CELULAR,P497_CORREO_MAIL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147924716403619448)
,p_event_id=>wwv_flow_imp.id(147923369230619434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P497_COD_AGENDA := AGENDA3.FN_COD_AGENDA;'
,p_attribute_03=>'P497_COD_AGENDA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147923406881619435)
,p_event_id=>wwv_flow_imp.id(147923369230619434)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147921868872619419)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147923546658619436)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147922946067619430)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147923971948619440)
,p_event_id=>wwv_flow_imp.id(147923546658619436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
':P497_ERR := null;',
'    IF:P497_COD_AGENDA is not null ',
'    and :P497_COD_EMPLEADO is not null and :P497_NOMBRE_CONTACTO is not null',
'    and :P497_NRO_TELEFONO is not null and :P497_CORREO_MAIL is not null ',
'    and :P497_COD_SECCION is not null and :P497_AREA is not null',
'    and :P497_NRO_CELULAR is not null then',
'            IF :P497_EDITAR IS NULL THEN',
'                --INSERTAR REGISTRO',
'                INSERT INTO AGENDA (',
'                        COD_AGENDA,',
'                        COD_EMPLEADO,',
'                        NOMBRE_CONTACTO,',
'                        NRO_TELEFONO,',
'                        NRO_CELULAR,',
'                        CORREO_MAIL,',
'                        COD_SECCION,',
'                        AREA',
'                ) VALUES (',
'                         :P497_COD_AGENDA,',
'                         :P497_COD_EMPLEADO,',
'                         :P497_NOMBRE_CONTACTO,',
'                         :P497_NRO_TELEFONO,',
'                         :P497_NRO_CELULAR,',
'                         :P497_CORREO_MAIL,',
'                         :P497_COD_SECCION,',
'                         :P497_AREA',
'                );',
'            ELSE ',
'                ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE AGENDA SET',
'              --          COD_EMPRESA=:P497_COD_EMPRESA,',
'              --          COD_AGENDA =:P497_COD_AGENDA,',
'                        COD_EMPLEADO =:P497_COD_EMPLEADO,',
'                        NOMBRE_CONTACTO=:P497_NOMBRE_CONTACTO,',
'                        NRO_TELEFONO =:P497_NRO_TELEFONO,',
'                        NRO_CELULAR =:P497_NRO_CELULAR,',
'                        CORREO_MAIL=:P497_CORREO_MAIL,',
'                        COD_SECCION=:P497_COD_SECCION,',
'                        AREA=:P497_AREA',
'                WHERE ROWID = :P497_EDITAR;',
'            END IF;',
'    ELSE',
'         :P497_ERR := ''Por favor, complete todos los campos '';   ',
'',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P497_COD_AGENDA,P497_COD_EMPLEADO,P497_NRO_TELEFONO,P497_NRO_CELULAR,P497_CORREO_MAIL,P497_COD_SECCION,P497_AREA,P497_NOMBRE_CONTACTO'
,p_attribute_03=>'P497_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147924158971619442)
,p_event_id=>wwv_flow_imp.id(147923546658619436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147211007472436525)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147924212799619443)
,p_event_id=>wwv_flow_imp.id(147923546658619436)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147921868872619419)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P497_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147924398008619444)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(147923200709619433)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147924445539619445)
,p_event_id=>wwv_flow_imp.id(147924398008619444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147921868872619419)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(147924826473619449)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P497_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(147924945953619450)
,p_event_id=>wwv_flow_imp.id(147924826473619449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148012176612078401)
,p_event_id=>wwv_flow_imp.id(147924826473619449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    DELETE AGENDA',
'    WHERE ROWID = :P497_ELIMINAR;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P497_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148012242579078402)
,p_event_id=>wwv_flow_imp.id(147924826473619449)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147211007472436525)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148012317576078403)
,p_name=>'DA_ERR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P497_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148012428180078404)
,p_event_id=>wwv_flow_imp.id(148012317576078403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P497_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P497_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148012579197078405)
,p_name=>'DA_EDITAR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P497_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148012671958078406)
,p_event_id=>wwv_flow_imp.id(148012579197078405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(147921868872619419)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148012763512078407)
,p_event_id=>wwv_flow_imp.id(148012579197078405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P497_EDITAR is not null then',
'        select  COD_EMPLEADO,',
'                        NOMBRE_CONTACTO,',
'                        NRO_TELEFONO,',
'                        NRO_CELULAR,',
'                        CORREO_MAIL,',
'                        COD_SECCION,',
'                        AREA',
'        into :P497_COD_EMPLEADO,',
'                         :P497_NOMBRE_CONTACTO,',
'                         :P497_NRO_TELEFONO,',
'                         :P497_NRO_CELULAR,',
'                         :P497_CORREO_MAIL,',
'                         :P497_COD_SECCION,',
'                         :P497_AREA',
'        from AGENDA',
'        where rowid = :P497_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P497_EDITAR'
,p_attribute_03=>'P497_COD_EMPLEADO,P497_NRO_TELEFONO,P497_NRO_CELULAR,P497_CORREO_MAIL,P497_COD_SECCION,P497_AREA,P497_NOMBRE_CONTACTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148013231407078412)
,p_name=>'DA_TRAER_DATOS'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P497_COD_EMPLEADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148013398652078413)
,p_event_id=>wwv_flow_imp.id(148013231407078412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       nvl(p.nombre,p.nomb_fantasia) nombre',
'into :P497_NOMBRE_CONTACTO',
'from inv.rh_empleados e,',
'     personas p',
'where e.cod_empresa=''1''',
'and   e.activo=''S''',
'and   e.cod_persona=p.cod_persona',
'and   :P497_COD_EMPLEADO=e.cod_empleado;'))
,p_attribute_02=>'P497_COD_EMPLEADO'
,p_attribute_03=>'P497_NOMBRE_CONTACTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(147924039293619441)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P497_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P497_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P497_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
