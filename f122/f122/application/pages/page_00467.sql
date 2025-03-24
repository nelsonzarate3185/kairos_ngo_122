prompt --application/pages/page_00467
begin
--   Manifest
--     PAGE: 00467
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
 p_id=>467
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ingresos y Egresos Varios - CCINGEGR'
,p_alias=>'CCINGEGR'
,p_step_title=>'Ingresos y Egresos Varios - CCINGEGR'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230404171146'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136950598928258335)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139917602462109146)
,p_plug_name=>'Ingresos y Egresos Varios - CCINGEGR'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136950476933258334)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(139917602462109146)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.COD_EMPRESA,',
'       c.TIP_COMPROBANTE,',
'       c.SER_COMPROBANTE,',
'       c.NRO_COMPROBANTE,',
'       c.FEC_COMPROBANTE,',
'       c.COD_CUENTA,',
'       (select nombre_cuenta ',
'            from co_plan_cuentas e ',
'            where e.cod_empresa = :p_cod_empresa ',
'            and e.cod_cuenta = c.cod_cuenta',
'            and nvl(asentable,''N'') = ''S''',
'            AND COD_EJERCICIO = TO_CHAR(nvl(to_Date(c.FEC_COMPROBANTE,''DD/MM/YYYY''),sysdate),''YYYY''))  DESC_CUENTA,',
'       c.OBSERVACION,',
'       c.COD_MONEDA,',
'       c.TIP_CAMBIO,',
'       c.MONTO,',
'       c.TIP_MOVIMIENTO,',
'       c.FEC_CARGA,',
'       c.COD_USUARIO,',
'       c.ASIENTOS,',
'       c.COD_CLIENTE,',
'       c.COD_SUCURSAL,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  from CC_INGRESOS_EGRESOS_VARIOS c'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(136950614969258336)
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
,p_internal_uid=>136950614969258336
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136950798454258337)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136950863264258338)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136950997632258339)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136951083579258340)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Comprobante'
,p_column_link=>'javascript:$s(''P467_NRO_COMPROBANTE'',''#NRO_COMPROBANTE#''),$s(''P467_COD_CLIENTE'',''#COD_CLIENTE#''),$s(''P467_COD_MONEDA'',''#COD_MONEDA#'');'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136951172302258341)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136951245090258342)
,p_db_column_name=>'COD_CUENTA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cuenta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136951325765258343)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136951401881258344)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136951521165258345)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136951613402258346)
,p_db_column_name=>'MONTO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136951706928258347)
,p_db_column_name=>'TIP_MOVIMIENTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136951858970258348)
,p_db_column_name=>'FEC_CARGA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fec Carga'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136951959212258349)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136952068391258350)
,p_db_column_name=>'ASIENTOS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Asientos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139913146643109101)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139913268050109102)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139917712605109147)
,p_db_column_name=>'DESC_CUENTA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(139992771073900340)
,p_db_column_name=>'EDITAR'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P467_EDITAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(139992899832900341)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P467_ELIMINAR'',''#ROWID#'');'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140553077199848714)
,p_db_column_name=>'ROWID'
,p_display_order=>210
,p_column_identifier=>'V'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(139958083334038655)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1399581'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:NRO_COMPROBANTE:FEC_COMPROBANTE:TIP_COMPROBANTE:COD_CUENTA:DESC_CUENTA:COD_CLIENTE:COD_MONEDA:TIP_CAMBIO:MONTO:ELIMINAR'
,p_sort_column_1=>'NRO_COMPROBANTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139916765092109137)
,p_plug_name=>'BARRA'
,p_parent_plug_id=>wwv_flow_imp.id(139917602462109146)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139917519893109145)
,p_plug_name=>'BARRA_DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(139917602462109146)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139990732201900320)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(140551720481848701)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(140552058681848704)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(139992249459900335)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(136950476933258334)
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
 p_id=>wwv_flow_imp.id(139913368208109103)
,p_name=>'P467_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139913477144109104)
,p_name=>'P467_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139913557747109105)
,p_name=>'P467_COD_MONEDA_BASE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139913677711109106)
,p_name=>'P467_NOM_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139913762475109107)
,p_name=>'P467_COD_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139913835839109108)
,p_name=>'P467_NOM_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139913942169109109)
,p_name=>'P467_COD_EMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139914019191109110)
,p_name=>'P467_NOM_EMPRESA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139914133134109111)
,p_name=>'P467_COD_SUCURSAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139914206837109112)
,p_name=>'P467_NOM_SUCURSAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139914332035109113)
,p_name=>'P467_COD_USUARIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(139917519893109145)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139914466537109114)
,p_name=>'P467_COD_IDIOMA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139914553255109115)
,p_name=>'P467_CODSISMENU'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139914622100109116)
,p_name=>'P467_TIPO_TRANS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139914720117109117)
,p_name=>'P467_TIPO_COND'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139914825926109118)
,p_name=>'P467_SER_COMPROBANTE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139914908344109119)
,p_name=>'P467_TIP_COMPROBANTE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139915005586109120)
,p_name=>'P467_ES_BORRADO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139915159724109121)
,p_name=>'P467_MODIFICA_FECHA_ANT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139915237437109122)
,p_name=>'P467_CAMBIA_FECHA'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(136950598928258335)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139916832422109138)
,p_name=>'P467_NOM_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139916765092109137)
,p_prompt=>'Nombre Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_CLIENTES_CCINGEGR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT  c.cod_cliente||'' - ''||p.nombre L, ',
'          c.cod_cliente V ',
'    FROM cc_clientes c, personas p, ident_personas i',
'    WHERE c.cod_empresa = :p_cod_empresa',
'      AND c.cod_persona = p.cod_persona',
'      AND c.estado =''A''',
'      AND I.COD_IDENT IN (''RUC'',''CI'')',
'      AND i.cod_persona = c.cod_persona',
'',
' ORDER BY 1'))
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139916917652109139)
,p_name=>'P467_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(139916765092109137)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139917093969109140)
,p_name=>'P467_DESC_MONEDA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(139916765092109137)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_moneda ',
'from monedas;'))
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139917128190109141)
,p_name=>'P467_ASIENTOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(139916765092109137)
,p_prompt=>'Asiento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139917238331109142)
,p_name=>'P467_FEC_CARGA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(139917519893109145)
,p_prompt=>'Fecha Carga'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139989829735900311)
,p_name=>'P467_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(136950476933258334)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139990289084900315)
,p_name=>'P467_NRO_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(136950476933258334)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139990476514900317)
,p_name=>'P467_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(136950476933258334)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139990593316900318)
,p_name=>'P467_COD_MONEDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(136950476933258334)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139990893337900321)
,p_name=>'P467_AUX_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Nro. Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'readonly'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139990999209900322)
,p_name=>'P467_FEC_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Fec Comprobante'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139991001699900323)
,p_name=>'P467_COD_CUENTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Cuenta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT cod_cuenta||'' - ''||nombre_cuenta D, ',
'       cod_cuenta R',
'  from co_plan_cuentas ',
' where cod_empresa = :p_cod_empresa ',
'   and nvl(asentable,''N'') = ''S''',
'   AND COD_EJERCICIO = TO_CHAR(nvl(to_Date(:P467_FEC_COMPROBANTE,''DD/MM/YYYY''),sysdate),''YYYY'') ',
'',
'   order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P467_FEC_COMPROBANTE'
,p_ajax_items_to_submit=>'P467_FEC_COMPROBANTE'
,p_ajax_optimize_refresh=>'N'
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
 p_id=>wwv_flow_imp.id(139991172460900324)
,p_name=>'P467_AUX_OBSERVACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(139991232982900325)
,p_name=>'P467_AUX_COD_MONEDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MONEDAS_CCINGEGR'
,p_lov=>'select descripcion, cod_moneda from monedas order by 1'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139991361547900326)
,p_name=>'P467_TIP_CAMBIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Tip Cambio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_MONEDA||''-''||DESCRIPCION D,COD_MONEDA R',
'from monedas'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139991490625900327)
,p_name=>'P467_MONTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Monto'
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
 p_id=>wwv_flow_imp.id(139991552762900328)
,p_name=>'P467_TIP_MOVIMIENTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Tip Movimiento'
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
 p_id=>wwv_flow_imp.id(139991698964900329)
,p_name=>'P467_AUX_FEC_CARGA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Fec. Carga'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139991886267900331)
,p_name=>'P467_AUX_ASIENTOS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Asientos'
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
 p_id=>wwv_flow_imp.id(139991940775900332)
,p_name=>'P467_AUX_COD_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_CCINGEGR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT  c.cod_cliente||'' - ''||p.nombre L, ',
'          c.cod_cliente V ',
'    FROM cc_clientes c, personas p, ident_personas i',
'    WHERE c.cod_empresa = :p_cod_empresa',
'      AND c.cod_persona = p.cod_persona',
'      AND c.estado =''A''',
'      AND I.COD_IDENT IN (''RUC'',''CI'')',
'      AND i.cod_persona = c.cod_persona',
'',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139992195649900334)
,p_name=>'P467_AUX_COD_USUARIO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_prompt=>'Nom. Usuario'
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
 p_id=>wwv_flow_imp.id(139992999030900342)
,p_name=>'P467_EDITAR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(136950476933258334)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(139993367114900346)
,p_name=>'P467_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(136950476933258334)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140552344280848707)
,p_name=>'P467_ERR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(139990732201900320)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(140553574038848719)
,p_name=>'P467_AUX_COD_USUARIO2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(139917519893109145)
,p_prompt=>'Usuario'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139989989875900312)
,p_name=>'DA_MOSTRAR_DETALLE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P467_COD_MONEDA'
,p_condition_element=>'P467_COD_MONEDA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139990100523900314)
,p_event_id=>wwv_flow_imp.id(139989989875900312)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'      select descripcion',
'      into :P467_DESC_MONEDA ',
'      from monedas ',
'      where cod_moneda=:P467_COD_MONEDA;',
'',
'    SELECT fec_carga,cod_usuario,observacion,asientos',
'    into :P467_fec_carga, :P467_AUX_COD_USUARIO2, :P467_OBSERVACION, :P467_ASIENTOS',
'    from CC_INGRESOS_EGRESOS_VARIOS',
'    where NRO_COMPROBANTE=:P467_NRO_COMPROBANTE;',
'',
'        select nvl( ltrim( pe.nombre ), ltrim( pe.nomb_fantasia ) )',
'          into :P467_NOM_CLIENTE',
'           from cc_clientes cl, personas pe',
'          where cl.cod_empresa = :P_cod_empresa',
'            and cl.cod_cliente = :P467_COD_CLIENTE',
'            and pe.cod_persona = cl.cod_persona ;',
'  exception',
'    when others then',
'      :P467_NOM_CLIENTE := null ;',
'',
'',
'',
'',
'END;',
' '))
,p_attribute_02=>'P467_NRO_COMPROBANTE,P467_COD_CLIENTE,P467_COD_MONEDA,P467_COD_USUARIO'
,p_attribute_03=>'P467_NOM_CLIENTE,P467_DESC_MONEDA,P467_FEC_CARGA,P467_OBSERVACION,P467_ASIENTOS,P467_AUX_COD_USUARIO2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139990351917900316)
,p_event_id=>wwv_flow_imp.id(139989989875900312)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'INTO :P467_NOM_CLIENTE',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_cod_empresa ',
'and c.cod_persona = p.cod_persona ',
'and c.estado  NOT IN(''I'',''B''); ',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139992385337900336)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(139992249459900335)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139992422475900337)
,p_event_id=>wwv_flow_imp.id(139992385337900336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P467_FEC_COMPROBANTE,P467_COD_CUENTA,P467_AUX_OBSERVACION,P467_AUX_COD_MONEDA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139992591297900338)
,p_event_id=>wwv_flow_imp.id(139992385337900336)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P467_AUX_NRO_COMPROBANTE := CCINGEGR.FN_NRO_COMPROBANTE;'
,p_attribute_03=>'P467_ROWID,P467_AUX_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139992681414900339)
,p_event_id=>wwv_flow_imp.id(139992385337900336)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139990732201900320)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139993027317900343)
,p_name=>'DA_EDITAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P467_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139993197889900344)
,p_event_id=>wwv_flow_imp.id(139993027317900343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139990732201900320)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140552880745848712)
,p_event_id=>wwv_flow_imp.id(139993027317900343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P467_EDITAR is not null then',
'        select  NRO_COMPROBANTE,',
'                TIP_COMPROBANTE,',
'                SER_COMPROBANTE,',
'                FEC_COMPROBANTE,',
'                COD_CUENTA,',
'                OBSERVACION,',
'                COD_MONEDA,',
'                TIP_CAMBIO,',
'                MONTO,',
'                TIP_MOVIMIENTO,',
'                FEC_CARGA,',
'                COD_USUARIO,',
'                ASIENTOS,',
'                COD_CLIENTE',
'        into ',
'                :P467_AUX_NRO_COMPROBANTE,',
'                :P467_TIP_COMPROBANTE,',
'                :P467_SER_COMPROBANTE,',
'                :P467_FEC_COMPROBANTE,',
'                :P467_COD_CUENTA,',
'                :P467_AUX_OBSERVACION,',
'                :P467_AUX_COD_MONEDA,',
'                :P467_TIP_CAMBIO,',
'                :P467_MONTO,',
'                :P467_TIP_MOVIMIENTO,',
'                :P467_AUX_FEC_CARGA,',
'                :P467_AUX_COD_USUARIO,',
'                :P467_AUX_ASIENTOS,',
'                :P467_AUX_COD_CLIENTE',
'        from CC_INGRESOS_EGRESOS_VARIOS',
'        where rowid = :P467_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P467_EDITAR'
,p_attribute_03=>'P467_AUX_NRO_COMPROBANTE,P467_TIP_COMPROBANTE,P467_SER_COMPROBANTE,P467_FEC_COMPROBANTE,P467_COD_CUENTA,P467_AUX_OBSERVACION,P467_AUX_COD_MONEDA,P467_TIP_CAMBIO,P467_MONTO,P467_TIP_MOVIMIENTO,P467_AUX_FEC_CARGA,P467_AUX_COD_USUARIO,P467_AUX_ASIENTOS,'
||'P467_AUX_COD_CLIENTE,P467_COD_EMPRESA,P467_COD_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(139993442571900347)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P467_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139993580128900348)
,p_event_id=>wwv_flow_imp.id(139993442571900347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139993679351900349)
,p_event_id=>wwv_flow_imp.id(139993442571900347)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    DELETE CC_INGRESOS_EGRESOS_VARIOS',
'    WHERE ROWID = :P467_ELIMINAR;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P467_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(139993703350900350)
,p_event_id=>wwv_flow_imp.id(139993442571900347)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136950476933258334)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140551821566848702)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(140551720481848701)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140551969810848703)
,p_event_id=>wwv_flow_imp.id(140551821566848702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139990732201900320)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140552126096848705)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(140552058681848704)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140552204572848706)
,p_event_id=>wwv_flow_imp.id(140552126096848705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
':P467_ERR := null;',
':P467_TIP_COMPROBANTE:=''IEV'';',
':P467_SER_COMPROBANTE :=''A'';',
'    IF :P467_AUX_NRO_COMPROBANTE is not null ',
'    and :P467_FEC_COMPROBANTE is not null and :P467_AUX_COD_CLIENTE is not null',
'    and :P467_AUX_OBSERVACION is not null and :P467_TIP_CAMBIO is not null',
'    and :P467_MONTO is not null and :P467_TIP_MOVIMIENTO is not null',
'    and :P467_AUX_FEC_CARGA is not null and :P467_AUX_COD_USUARIO is not null',
'    and :P467_AUX_ASIENTOS is not null and :P467_AUX_COD_CLIENTE is not null THEN',
'            IF :P467_EDITAR IS NULL THEN',
'                --INSERTAR REGISTRO',
'                BEGIN',
'                        INSERT INTO CC_INGRESOS_EGRESOS_VARIOS (',
'                                COD_EMPRESA,',
'                                COD_SUCURSAL,',
'                                NRO_COMPROBANTE,',
'                                TIP_COMPROBANTE,',
'                                SER_COMPROBANTE,',
'                                FEC_COMPROBANTE,',
'                                COD_CUENTA,',
'                                OBSERVACION,',
'                                COD_MONEDA,',
'                                TIP_CAMBIO,',
'                                MONTO,',
'                                TIP_MOVIMIENTO,',
'                                FEC_CARGA,',
'                                COD_USUARIO,',
'                                ASIENTOS,',
'                                COD_CLIENTE',
'                        ) VALUES (',
'                                :P467_COD_EMPRESA,',
'                                :P467_COD_SUCURSAL,',
'                                :P467_AUX_NRO_COMPROBANTE,',
'                                :P467_TIP_COMPROBANTE,',
'                                :P467_SER_COMPROBANTE,',
'                                :P467_FEC_COMPROBANTE,',
'                                :P467_COD_CUENTA,',
'                                :P467_AUX_OBSERVACION,',
'                                :P467_AUX_COD_MONEDA,',
'                                :P467_TIP_CAMBIO,',
'                                :P467_MONTO,',
'                                :P467_TIP_MOVIMIENTO,',
'                                :P467_AUX_FEC_CARGA,',
'                                :P467_AUX_COD_USUARIO,',
'                                :P467_AUX_ASIENTOS,',
'                                :P467_AUX_COD_CLIENTE',
'                        );',
'                      EXCEPTION',
'                      WHEN OTHERS THEN ',
'                         RAISE_APPLICATION_ERROR (-20111,''ERROR: '' || SQLERRM);',
'                       END;',
'',
'            ELSE ',
'                ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE CC_INGRESOS_EGRESOS_VARIOS SET',
'                        FEC_COMPROBANTE =:P467_FEC_COMPROBANTE,',
'                        COD_CUENTA =:P467_COD_CUENTA,',
'                        OBSERVACION =:P467_AUX_OBSERVACION,',
'                        COD_MONEDA =:P467_AUX_COD_MONEDA,',
'                        TIP_CAMBIO =:P467_TIP_CAMBIO,',
'                        MONTO = :P467_MONTO,',
'                        TIP_MOVIMIENTO = :P467_TIP_MOVIMIENTO,',
'                        FEC_CARGA = :P467_AUX_FEC_CARGA,',
'                        COD_USUARIO = :P467_AUX_COD_USUARIO,',
'                        ASIENTOS = :P467_AUX_ASIENTOS,',
'                        COD_CLIENTE = :P467_AUX_COD_CLIENTE',
'                WHERE ROWID = :P467_EDITAR;',
'            END IF;',
'    ELSE',
'        :P467_ERR:=''Por favor: ingrese todos los campos obligatorio '';',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P467_AUX_NRO_COMPROBANTE,P467_TIP_COMPROBANTE,P467_SER_COMPROBANTE,P467_FEC_COMPROBANTE,P467_COD_CUENTA,P467_AUX_OBSERVACION,P467_AUX_COD_MONEDA,P467_TIP_CAMBIO,P467_MONTO,P467_TIP_MOVIMIENTO,P467_AUX_FEC_CARGA,P467_AUX_COD_USUARIO,P467_AUX_ASIENTOS,'
||'P467_AUX_COD_CLIENTE,P467_COD_SUCURSAL,P467_COD_EMPRESA'
,p_attribute_03=>'P467_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140552600855848710)
,p_event_id=>wwv_flow_imp.id(140552126096848705)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(136950476933258334)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P467_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140552711774848711)
,p_event_id=>wwv_flow_imp.id(140552126096848705)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(139990732201900320)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P467_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(140552416845848708)
,p_name=>'DA_ERR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P467_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(140552522770848709)
,p_event_id=>wwv_flow_imp.id(140552416845848708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P467_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P467_ERR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(140553419400848718)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pr_guardar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
':P467_ERR := null;',
':P467_TIP_COMPROBANTE:=''IEV'';',
':P467_SER_COMPROBANTE :=''A'';',
'    IF :P467_AUX_NRO_COMPROBANTE is not null ',
'    and :P467_FEC_COMPROBANTE is not null and :P467_AUX_COD_CLIENTE is not null',
'    and :P467_AUX_OBSERVACION is not null and :P467_TIP_CAMBIO is not null',
'    and :P467_MONTO is not null and :P467_TIP_MOVIMIENTO is not null',
'    and :P467_AUX_FEC_CARGA is not null and :P467_AUX_COD_USUARIO is not null',
'    and :P467_AUX_ASIENTOS is not null and :P467_AUX_COD_CLIENTE is not null THEN',
'            IF :P467_EDITAR IS NULL THEN',
'                --INSERTAR REGISTRO',
'                INSERT INTO CC_INGRESOS_EGRESOS_VARIOS (',
'                        COD_EMPRESA,',
'                        COD_SUCURSAL,',
'                        NRO_COMPROBANTE,',
'                        TIP_COMPROBANTE,',
'                        SER_COMPROBANTE,',
'                        FEC_COMPROBANTE,',
'                        COD_CUENTA,',
'                        OBSERVACION,',
'                        COD_MONEDA,',
'                        TIP_CAMBIO,',
'                        MONTO,',
'                        TIP_MOVIMIENTO,',
'                        FEC_CARGA,',
'                        COD_USUARIO,',
'                        ASIENTOS,',
'                        COD_CLIENTE',
'',
'                ) VALUES (',
'                        :P467_COD_EMPRESA,',
'                        :P467_COD_SUCURSAL,',
'                        :P467_AUX_NRO_COMPROBANTE,',
'                        :P467_TIP_COMPROBANTE,',
'                        :P467_SER_COMPROBANTE,',
'                        :P467_FEC_COMPROBANTE,',
'                        :P467_COD_CUENTA,',
'                        :P467_AUX_OBSERVACION,',
'                        :P467_AUX_COD_MONEDA,',
'                        :P467_TIP_CAMBIO,',
'                        :P467_MONTO,',
'                        :P467_TIP_MOVIMIENTO,',
'                        :P467_AUX_FEC_CARGA,',
'                        :P467_AUX_COD_USUARIO,',
'                        :P467_AUX_ASIENTOS,',
'                        :P467_AUX_COD_CLIENTE',
'                );',
'            ELSE ',
'                ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE CC_INGRESOS_EGRESOS_VARIOS SET',
'                        FEC_COMPROBANTE =:P467_FEC_COMPROBANTE,',
'                        COD_CUENTA =:P467_COD_CUENTA,',
'                        OBSERVACION =:P467_AUX_OBSERVACION,',
'                        COD_MONEDA =:P467_AUX_COD_MONEDA,',
'                        TIP_CAMBIO =:P467_TIP_CAMBIO,',
'                        MONTO = :P467_MONTO,',
'                        TIP_MOVIMIENTO = :P467_TIP_MOVIMIENTO,',
'                        FEC_CARGA = :P467_AUX_FEC_CARGA,',
'                        COD_USUARIO = :P467_AUX_COD_USUARIO,',
'                        ASIENTOS = :P467_AUX_ASIENTOS,',
'                        COD_CLIENTE = :P467_AUX_COD_CLIENTE',
'                WHERE ROWID = :P467_EDITAR;',
'            END IF;',
'    ELSE',
'        :P467_ERR:=''Por favor: ingrese todos los campos obligatorio '';',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(139990652661900319)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P467_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P467_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P467_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
