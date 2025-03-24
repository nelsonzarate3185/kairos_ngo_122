prompt --application/pages/page_00432
begin
--   Manifest
--     PAGE: 00432
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
 p_id=>432
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STUSUINV'
,p_alias=>'STUSUINV'
,p_step_title=>'STUSUINV'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANASIS'
,p_last_upd_yyyymmddhh24miss=>'20230316165919'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127082481037559342)
,p_plug_name=>'Usuarios para Inventario - STUSUINV'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127853684101221518)
,p_plug_name=>'Reporte usuarios'
,p_parent_plug_id=>wwv_flow_imp.id(127082481037559342)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_USUARIO,',
'    CLAVE,',
'    USUARIO_INVENTIVA,',
'    DEPOSITO,',
'    NOMBRE,',
'    ROL,',
'    AGENCIA,',
'    COD_EMPLEADO,',
'    ESTADO,',
'    rowid R_ID, ',
'    null editar,',
'    null eliminar',
'from MO_USUARIOS',
'order by R_ID DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte usuarios'
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
 p_id=>wwv_flow_imp.id(127853709281221519)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'no se encontraron registros'
,p_max_rows_per_page=>'15'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>127853709281221519
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127853879862221520)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127853986982221521)
,p_db_column_name=>'CLAVE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Clave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127854006581221522)
,p_db_column_name=>'USUARIO_INVENTIVA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Usuario Inventiva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127854149431221523)
,p_db_column_name=>'DEPOSITO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Deposito'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127854272960221524)
,p_db_column_name=>'NOMBRE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127854360828221525)
,p_db_column_name=>'ROL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Rol'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127854436925221526)
,p_db_column_name=>'AGENCIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Agencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127854568595221527)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Responsable'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(58432778894212493)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127854684386221528)
,p_db_column_name=>'ESTADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127854822992221530)
,p_db_column_name=>'EDITAR'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P432_SEQ_ID_EDITAR'',''#R_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127854904843221531)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P432_SEQ_ID_ELIMINAR'',''#R_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
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
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(127855088712221532)
,p_db_column_name=>'R_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'R Id'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(128199590571006317)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1281996'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_USUARIO:CLAVE:NOMBRE:DEPOSITO:ROL:AGENCIA:COD_EMPLEADO:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127082583255559343)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127082680813559344)
,p_plug_name=>'AGREGAR/EDITAR'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127853536594221517)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127082680813559344)
,p_button_name=>'bt_cancelar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127853250640221514)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(127082680813559344)
,p_button_name=>'bt_aceptar_crear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127853315091221515)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(127082680813559344)
,p_button_name=>'bt_aceptar_editar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(127855382241221535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(127853684101221518)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127082715218559345)
,p_name=>'P432_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127082803680559346)
,p_name=>'P432_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127082937207559347)
,p_name=>'P432_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127083076123559348)
,p_name=>'P432_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127083194015559349)
,p_name=>'P432_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127083290987559350)
,p_name=>'P432_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127851949801221501)
,p_name=>'P432_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127852080371221502)
,p_name=>'P432_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127852108852221503)
,p_name=>'P432_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127852228485221504)
,p_name=>'P432_COD_USUARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127852347481221505)
,p_name=>'P432_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127852432004221506)
,p_name=>'P432_CODSISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127852637488221508)
,p_name=>'P432_CLAVE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(127082680813559344)
,p_prompt=>'Clave'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127852769980221509)
,p_name=>'P432_NOMBRE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(127082680813559344)
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
 p_id=>wwv_flow_imp.id(127852813411221510)
,p_name=>'P432_DEPOSITO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(127082680813559344)
,p_prompt=>'Deposito'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal ||'' - ''||descripcion d, cod_sucursal r',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127852961022221511)
,p_name=>'P432_ROL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(127082680813559344)
,p_prompt=>'Rol'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:WORKER;WORKER,MANAGER;MANAGER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127853005946221512)
,p_name=>'P432_AGENCIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(127082680813559344)
,p_prompt=>'Agencia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:ARTIGAS;ARTIGAS,SAN LORENZO;SAN LORENZO'
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
 p_id=>wwv_flow_imp.id(127853179319221513)
,p_name=>'P432_COD_RESPONSABLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(127082680813559344)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado||'' - ''||p.nombre D, e.cod_empleado R',
'from rh_empleados e, personas p',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona',
'order by p.nombre asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
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
 p_id=>wwv_flow_imp.id(127855139344221533)
,p_name=>'P432_SEQ_ID_EDITAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127855267084221534)
,p_name=>'P432_SEQ_ID_ELIMINAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127856019294221542)
,p_name=>'P432_A_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(127082680813559344)
,p_prompt=>unistr('C\00F3digo')
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
 p_id=>wwv_flow_imp.id(127856568041221547)
,p_name=>'P432_AUX_MSJ_CONTROL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(127082583255559343)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127855400627221536)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127855382241221535)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128393624950304714)
,p_event_id=>wwv_flow_imp.id(127855400627221536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P432_A_COD_USUARIO,P432_CLAVE,P432_NOMBRE,P432_DEPOSITO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127855531721221537)
,p_event_id=>wwv_flow_imp.id(127855400627221536)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN',
'    :P432_ROL := ''WORKER'';',
'    :P432_AGENCIA :=''ARTIGAS'';',
'',
'END;'))
,p_attribute_03=>'P432_ROL,P432_AGENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127855698803221538)
,p_event_id=>wwv_flow_imp.id(127855400627221536)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(127853250640221514)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127855715814221539)
,p_event_id=>wwv_flow_imp.id(127855400627221536)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(127853315091221515)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127855860172221540)
,p_event_id=>wwv_flow_imp.id(127855400627221536)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127082680813559344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127856125820221543)
,p_name=>'da_aceptar_guardar'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127853250640221514)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127856235740221544)
,p_event_id=>wwv_flow_imp.id(127856125820221543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P432_AUX_MSJ_CONTROL := null;',
'if (:P432_A_COD_USUARIO is null or :P432_DEPOSITO is null or :P432_ROL is null or :P432_AGENCIA is null)then',
'    RAISE_APPLICATION_ERROR (-20111,''Por favor ingrese todos los datos obligatorios'' );',
'else',
' BEGIN',
'    insert into MO_USUARIOS',
'            (   COD_USUARIO,      -- NOT NULL VARCHAR2(60)  ',
'                CLAVE,                    --  VARCHAR2(60)  ',
'                USUARIO_INVENTIVA,         -- VARCHAR2(100) ',
'                DEPOSITO,          --NOT NULL VARCHAR2(10)  ',
'                NOMBRE,           --          VARCHAR2(100) ',
'                ROL,              -- NOT NULL VARCHAR2(100) ',
'                AGENCIA,          -- NOT NULL VARCHAR2(100) ',
'                COD_EMPLEADO,     --          VARCHAR2(20)  ',
'                ESTADO          -- NOT NULL VARCHAR2(10) ',
'            ) values',
'            (   :P432_A_COD_USUARIO,',
'                :P432_CLAVE,',
'                null,',
'                :P432_DEPOSITO,',
'                :P432_NOMBRE,',
'                :P432_ROL,',
'                :P432_AGENCIA,',
'                :P432_COD_RESPONSABLE,',
'                ''S''',
'            );',
'',
'    :P432_AUX_MSJ_CONTROL := 1;',
'    EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RAISE_APPLICATION_ERROR (-20111,''Ocurrio un Error creando el usuario: '' || SQLERRM);',
'',
' END;',
'',
'end if;'))
,p_attribute_02=>'P432_A_COD_USUARIO,P432_CLAVE,P432_NOMBRE,P432_DEPOSITO,P432_COD_RESPONSABLE,P432_ROL,P432_AGENCIA'
,p_attribute_03=>'P432_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127856384170221545)
,p_event_id=>wwv_flow_imp.id(127856125820221543)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Nuevo registro a\00F1adido')
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P432_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127856448215221546)
,p_event_id=>wwv_flow_imp.id(127856125820221543)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127082680813559344)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P432_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128393039210304708)
,p_event_id=>wwv_flow_imp.id(127856125820221543)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127853684101221518)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P432_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127856612883221548)
,p_name=>'da_aceptar_editar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(127853315091221515)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127856814886221550)
,p_event_id=>wwv_flow_imp.id(127856612883221548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P432_AUX_MSJ_CONTROL := null;',
'if (:P432_A_COD_USUARIO is null or :P432_DEPOSITO is null or :P432_ROL is null or :P432_AGENCIA is null)then',
'    RAISE_APPLICATION_ERROR (-20111,''Por favor ingrese todos los datos obligatorios'' );',
'else',
' BEGIN',
'    update MO_USUARIOS set',
'            COD_USUARIO = :P432_A_COD_USUARIO,',
'            CLAVE  = :P432_CLAVE,             ',
'            DEPOSITO = :P432_DEPOSITO,',
'            NOMBRE = :P432_NOMBRE,',
'            ROL = :P432_ROL,',
'            AGENCIA = :P432_AGENCIA,',
'            COD_EMPLEADO = :P432_COD_RESPONSABLE',
'    where rowid = :P432_SEQ_ID_EDITAR;          ',
'',
'    :P432_AUX_MSJ_CONTROL := 1;',
'    EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RAISE_APPLICATION_ERROR (-20111,''Ocurrio un Error creando el usuario: '' || SQLERRM);',
'',
' END;',
'',
'end if;'))
,p_attribute_02=>'P432_A_COD_USUARIO,P432_CLAVE,P432_NOMBRE,P432_DEPOSITO,P432_COD_RESPONSABLE,P432_ROL,P432_AGENCIA,P432_SEQ_ID_EDITAR'
,p_attribute_03=>'P432_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128392360589304701)
,p_event_id=>wwv_flow_imp.id(127856612883221548)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro modificado correctamente'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P432_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128392464475304702)
,p_event_id=>wwv_flow_imp.id(127856612883221548)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127082680813559344)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P432_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128393120234304709)
,p_event_id=>wwv_flow_imp.id(127856612883221548)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127853684101221518)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P432_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128392569510304703)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P432_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128392612596304704)
,p_event_id=>wwv_flow_imp.id(128392569510304703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(127853315091221515)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128392768435304705)
,p_event_id=>wwv_flow_imp.id(128392569510304703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(127853250640221514)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128392800392304706)
,p_event_id=>wwv_flow_imp.id(128392569510304703)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_USUARIO,    --   NOT NULL VARCHAR2(60)  ',
'    CLAVE,               --       VARCHAR2(60)     ',
'    DEPOSITO,         --- NOT NULL VARCHAR2(10)  ',
'    NOMBRE,           --          VARCHAR2(100) ',
'    ROL,              -- NOT NULL VARCHAR2(100) ',
'    AGENCIA,          -- NOT NULL VARCHAR2(100) ',
'    COD_EMPLEADO   --          VARCHAR2(20)  ',
'INTO',
'    :P432_A_COD_USUARIO,',
'    :P432_CLAVE,',
'    :P432_DEPOSITO,',
'    :P432_NOMBRE,',
'    :P432_ROL,',
'    :P432_AGENCIA,',
'    :P432_COD_RESPONSABLE',
'FROM MO_USUARIOS',
'WHERE ROWID = :P432_SEQ_ID_EDITAR;',
''))
,p_attribute_02=>'P432_SEQ_ID_EDITAR'
,p_attribute_03=>'P432_A_COD_USUARIO,P432_CLAVE,P432_NOMBRE,P432_DEPOSITO,P432_COD_RESPONSABLE,P432_ROL,P432_AGENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128392920484304707)
,p_event_id=>wwv_flow_imp.id(128392569510304703)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127082680813559344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(128393243040304710)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P432_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128393324767304711)
,p_event_id=>wwv_flow_imp.id(128393243040304710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128393473604304712)
,p_event_id=>wwv_flow_imp.id(128393243040304710)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from MO_USUARIOS',
'where rowid = :P432_SEQ_ID_ELIMINAR;'))
,p_attribute_02=>'P432_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128393571966304713)
,p_event_id=>wwv_flow_imp.id(128393243040304710)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Registro eliminado correctamente'
,p_attribute_02=>unistr('\00C9xito')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(128393733529304715)
,p_event_id=>wwv_flow_imp.id(128393243040304710)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(127853684101221518)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(127852529421221507)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P432_COD_USUARIO := nvl(:P_COD_USUARIO,user);',
'    :P432_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'');',
'    :P432_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,''01'');',
'    :P432_COD_MODULO := nvl(:P_COD_MODULO,null);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
