prompt --application/pages/page_00505
begin
--   Manifest
--     PAGE: 00505
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
 p_id=>505
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Maestro Mano de Obra STA - CAMOSTAM'
,p_alias=>'MAESTRO-MANO-DE-OBRA-STA-CAMOSTAM'
,p_step_title=>'Maestro Mano de Obra STA - CAMOSTAM'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57 || key == 44;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20240709085934'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148594270651563508)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148594344886563509)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(148594270651563508)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,',
'       COD_ARTICULO,',
'       MONTO,',
'       MONTO_ADICIONAL,',
'       MONTO_WHI_SETUP,',
'       COD_TECNICO,',
'       MONTO_GAR_JT,',
'       MONTO_VENTA,',
'       MONTO_COMISION_TECNICO,',
'       MONTO_COMISION_JEFE_TECNICO,',
'       COD_USR_INS,',
'       FEC_HOR_INS,',
'       COD_USR_UPD,',
'       FEC_HOR_UPD,',
'       (SELECT S.DESCRIPCION ',
'       FROM ST_ARTICULOS S,',
'             st_linea l,',
'             st_categorias c',
'        WHERE S.COD_EMPRESA = :P_COD_EMPRESA',
'         AND S.COD_ARTICULO = VT.COD_ARTICULO',
'         and s.cod_linea=l.cod_linea(+)',
'         and S.COD_EMPRESA = l.cod_empresa(+)',
'         and s.cod_categoria=c.cod_categoria(+)',
'         and S.COD_EMPRESA = c.cod_empresa(+)) DESCRIPCION,',
'        (SELECT NVL(L.DESCRIPCION,''Sin Definir'') ',
'        FROM ST_ARTICULOS S,',
'             st_linea l,',
'             st_categorias c',
'        WHERE S.COD_EMPRESA = :P_COD_EMPRESA',
'         AND S.COD_ARTICULO = VT.COD_ARTICULO',
'         and s.cod_linea=l.cod_linea(+)',
'         and S.COD_EMPRESA = l.cod_empresa(+)',
'         and s.cod_categoria=c.cod_categoria(+)',
'         and S.COD_EMPRESA = c.cod_empresa(+)) LINEA, ',
'         (SELECT NVL(C.DESCRIPCION,''Sin Definir'') ',
'        FROM ST_ARTICULOS S,',
'             st_linea l,',
'             st_categorias c',
'        WHERE S.COD_EMPRESA = :P_COD_EMPRESA',
'         AND S.COD_ARTICULO = VT.COD_ARTICULO',
'         and s.cod_linea=l.cod_linea(+)',
'         and S.COD_EMPRESA = l.cod_empresa(+)',
'         and s.cod_categoria=c.cod_categoria(+)',
'         and S.COD_EMPRESA = c.cod_empresa(+)) CATEGORIA,',
'       ROWID,',
'       NULL INFO,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'FROM vt_maestro_ot_mo_sta VT'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P505_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(148594570539563511)
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
,p_internal_uid=>148594570539563511
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148594674394563512)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148594755079563513)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Art\00EDculo')
,p_column_link=>'javascript:$s(''P505_INFO'',''#ROWID#'');'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148594841897563514)
,p_db_column_name=>'MONTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Monto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148594988717563515)
,p_db_column_name=>'MONTO_ADICIONAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Monto Adicional'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148595057002563516)
,p_db_column_name=>'MONTO_WHI_SETUP'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Monto Whi-Setup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148595180331563517)
,p_db_column_name=>'COD_TECNICO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148595225853563518)
,p_db_column_name=>'MONTO_GAR_JT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Monto Gar Jt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148595379215563519)
,p_db_column_name=>'MONTO_VENTA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Monto Venta'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148595441202563520)
,p_db_column_name=>'MONTO_COMISION_TECNICO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Monto Comision Tecnico'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148595587768563521)
,p_db_column_name=>'MONTO_COMISION_JEFE_TECNICO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Monto Comision Jefe Tecnico'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148595628601563522)
,p_db_column_name=>'COD_USR_INS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Usr Ins'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148595701674563523)
,p_db_column_name=>'FEC_HOR_INS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fec Hor Ins'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148595841315563524)
,p_db_column_name=>'COD_USR_UPD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Usr Upd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148595927028563525)
,p_db_column_name=>'FEC_HOR_UPD'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fec Hor Upd'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148596086516563526)
,p_db_column_name=>'ROWID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148596120684563527)
,p_db_column_name=>'EDITAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P505_EDITAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(148596221655563528)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P505_ELIMINAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(148596485113563530)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(148629148799081498)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148596519893563531)
,p_db_column_name=>'LINEA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>unistr('L\00EDnea')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(148636118071053414)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148596625339563532)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>unistr('Categor\00EDa')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(148636356847049857)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(148925237914071418)
,p_db_column_name=>'INFO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:Y,:P135_P_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'<span class="fa fa-file-pointer" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(148610645578503797)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1486107'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:INFO:COD_ARTICULO:DESCRIPCION:LINEA:CATEGORIA:COD_TECNICO:MONTO:MONTO_ADICIONAL:MONTO_WHI_SETUP:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148594439141563510)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(148594270651563508)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148597837661563544)
,p_plug_name=>'Editar/Agregar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148597977111563545)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(148597837661563544)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>' Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(148598207088563548)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(148597837661563544)
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
 p_id=>wwv_flow_imp.id(148662293069677201)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(148594344886563509)
,p_button_name=>'BT_NUEVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
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
,p_icon_css_classes=>'fa-clipboard-new'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148593610535563502)
,p_name=>'P505_COD_EMPRESA'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148593780991563503)
,p_name=>'P505_COD_SUCURSAL'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148593849586563504)
,p_name=>'P505_COD_MODULO'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148593910023563505)
,p_name=>'P505_COD_USUARIO'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148594022861563506)
,p_name=>'P505_NOM_SUCURSAL'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148594184630563507)
,p_name=>'P505_NOM_EMPRESA'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148596389810563529)
,p_name=>'P505_NOM_TECNICO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148594439141563510)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148596739839563533)
,p_name=>'P505_EDITAR'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148596889198563534)
,p_name=>'P505_ELIMINAR'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148596968116563535)
,p_name=>'P505_AUX_COD_TECNICO'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148597059625563536)
,p_name=>'P505_INFO'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148923711947071403)
,p_name=>'P505_ERR'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148924041320071406)
,p_name=>'P505_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148597837661563544)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct S.COD_ARTICULO|| '' - '' ||S.DESCRIPCION D,',
'       S.COD_ARTICULO R',
'FROM vt_maestro_ot_mo_sta v, ST_ARTICULOS s',
'WHERE S.COD_EMPRESA = :P505_COD_EMPRESA',
'AND S.COD_EMPRESA = V.COD_EMPRESA',
'AND S.COD_ARTICULO = V.COD_ARTICULO'))
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
 p_id=>wwv_flow_imp.id(148924102288071407)
,p_name=>'P505_COD_TECNICO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(148597837661563544)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct pr.cod_proveedor|| ''-'' ||p.nombre  a, cod_proveedor ',
'from cm_proveedores pr, personas p',
'where pr.cod_empresa = :P505_COD_EMPRESA',
'and pr.cod_persona = p.cod_persona',
'and pr.estado = ''A'''))
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
 p_id=>wwv_flow_imp.id(148924434752071410)
,p_name=>'P505_MONTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(148597837661563544)
,p_prompt=>'Monto'
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
 p_id=>wwv_flow_imp.id(148924580962071411)
,p_name=>'P505_MONTO_ADICIONAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(148597837661563544)
,p_prompt=>'Monto Adicional'
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
 p_id=>wwv_flow_imp.id(148924603957071412)
,p_name=>'P505_MONTO_WHI_SETUP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(148597837661563544)
,p_prompt=>'Monto Whi-Setup'
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
 p_id=>wwv_flow_imp.id(148597158588563537)
,p_name=>'DA_INFO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P505_INFO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148597304849563539)
,p_event_id=>wwv_flow_imp.id(148597158588563537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P505_INFO is not null then',
'    ',
'        SELECT COD_TECNICO ',
'        INTO :P505_AUX_COD_TECNICO',
'        FROM vt_maestro_ot_mo_sta',
'        WHERE ROWID = :P505_INFO;',
'',
'    END IF;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                :P505_AUX_COD_TECNICO := null;',
'        WHEN OTHERS THEN',
'                apex_debug.error(''Error cod_tecnico ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P505_INFO'
,p_attribute_03=>'P505_AUX_COD_TECNICO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148597267554563538)
,p_event_id=>wwv_flow_imp.id(148597158588563537)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' IF :P505_INFO is not NULL THEN',
'    select c.cod_proveedor||'' - ''||ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) ',
'    into :P505_NOM_TECNICO',
'    from cm_proveedores c, personas p, vt_maestro_ot_mo_sta v',
'    where c.cod_empresa = :P505_COD_EMPRESA',
'    and c.cod_persona = p.cod_persona',
'    and v.cod_tecnico = :P505_AUX_COD_TECNICO',
'    AND NVL(C.ESTADO,''A'')NOT IN (''I'');',
'',
'END IF;',
'',
'',
'    EXCEPTION',
'',
'        WHEN NO_DATA_FOUND then',
unistr('                    :P505_NOM_TECNICO := ''Sin Informaci\00F3n.'';'),
'  ',
'         /* WHEN NO_DATA_FOUND THEN',
'                    NULL;*/',
'          WHEN OTHERS THEN',
'                    apex_debug.error(''Error Info ''||SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P505_INFO,P505_AUX_COD_TECNICO'
,p_attribute_03=>'P505_NOM_TECNICO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148597459492563540)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P505_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148597579661563541)
,p_event_id=>wwv_flow_imp.id(148597459492563540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el art\00EDculo seleccionado?')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148597638962563542)
,p_event_id=>wwv_flow_imp.id(148597459492563540)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE vt_maestro_ot_mo_sta',
'    WHERE ROWID = :P505_ELIMINAR;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                apex_debug.error(''Error al eliminar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P505_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148597706600563543)
,p_event_id=>wwv_flow_imp.id(148597459492563540)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148594344886563509)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148598060591563546)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148597977111563545)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148598112518563547)
,p_event_id=>wwv_flow_imp.id(148598060591563546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148597837661563544)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148598333083563549)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148598207088563548)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148923549504071401)
,p_event_id=>wwv_flow_imp.id(148598333083563549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    IF :P505_EDITAR Is NULL THEN',
'    BEGIN',
'        INSERT INTO VT_MAESTRO_OT_MO_STA(',
'                    COD_EMPRESA,',
'                    COD_ARTICULO,',
'                    COD_TECNICO,',
'                    MONTO,',
'                    MONTO_ADICIONAL,',
'                    MONTO_WHI_SETUP',
'        )VALUES (',
'                :P505_COD_EMPRESA,',
'                :P505_ARTICULO,',
'                :P505_COD_TECNICO,',
'                :P505_MONTO,',
'                :P505_MONTO_ADICIONAL,',
'                :P505_MONTO_WHI_SETUP',
'        );',
'        EXCEPTION',
'        WHEN OTHERS THEN ',
'  RAISE_APPLICATION_ERROR(-20000,''Ha ocurrido un error al cargar del registro. ''||sqlerrm);',
'  END;',
' ',
'     ---   apex_debug.error(''Articulo: ''||:P505_ARTICULO);',
'',
'    ELSE',
'        UPDATE VT_MAESTRO_OT_MO_STA',
'        SET COD_EMPRESA = :P505_COD_EMPRESA,',
'            COD_ARTICULO = :P505_ARTICULO,',
'            COD_TECNICO = :P505_COD_TECNICO,',
'            MONTO = :P505_MONTO,',
'            MONTO_ADICIONAL = :P505_MONTO_ADICIONAL,',
'            MONTO_WHI_SETUP = :P505_MONTO_WHI_SETUP',
'        WHERE ROWID = :P505_EDITAR;',
'',
'    END IF;',
'',
'    CASE ',
'           WHEN :P505_ARTICULO IS NULL THEN',
unistr('               :P505_ERR := ''Seleccione un art\00EDculo.'';'),
'           WHEN :P505_MONTO IS NULL THEN',
'               :P505_ERR := ''Ingrese un monto.'';',
'    ELSE',
'           NULL;',
'    END CASE;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            apex_debug.error(''Error al guardar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P505_EDITAR,P505_ARTICULO,P505_COD_TECNICO,P505_MONTO,P505_MONTO_ADICIONAL,P505_MONTO_WHI_SETUP,P505_COD_EMPRESA'
,p_attribute_03=>'P505_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(347425733344528901)
,p_event_id=>wwv_flow_imp.id(148598333083563549)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P505_EDITAR := null;',
'end;'))
,p_attribute_03=>'P505_EDITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148923676189071402)
,p_event_id=>wwv_flow_imp.id(148598333083563549)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148594344886563509)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P505_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148598420375563550)
,p_event_id=>wwv_flow_imp.id(148598333083563549)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148597837661563544)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P505_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148662328394677202)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(148662293069677201)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148925038395071416)
,p_event_id=>wwv_flow_imp.id(148662328394677202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P505_EDITAR := null;',
':P505_ARTICULO := null;',
':P505_MONTO := null;',
':P505_MONTO_ADICIONAL := null;',
':P505_MONTO_WHI_SETUP := null;',
':P505_COD_TECNICO :=null;'))
,p_attribute_03=>'P505_EDITAR,P505_ARTICULO,P505_COD_TECNICO,P505_MONTO,P505_MONTO_ADICIONAL,P505_MONTO_WHI_SETUP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148662481659677203)
,p_event_id=>wwv_flow_imp.id(148662328394677202)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148597837661563544)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148662550290677204)
,p_name=>'DA_EDITAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P505_EDITAR'
,p_condition_element=>'P505_EDITAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148924756735071413)
,p_event_id=>wwv_flow_imp.id(148662550290677204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_ARTICULO,',
'           COD_TECNICO,',
'           MONTO,',
'           MONTO_ADICIONAL,',
'           MONTO_WHI_SETUP',
'    INTO :P505_ARTICULO,',
'         :P505_COD_TECNICO,',
'         :P505_MONTO,',
'         :P505_MONTO_ADICIONAL,',
'         :P505_MONTO_WHI_SETUP',
'    FROM vt_maestro_ot_mo_sta',
'    WHERE ROWID = :P505_EDITAR;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                null;',
'        WHEN OTHERS THEN',
'                apex_debug.error(''Error al editar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P505_EDITAR'
,p_attribute_03=>'P505_ARTICULO,P505_COD_TECNICO,P505_MONTO,P505_MONTO_ADICIONAL,P505_MONTO_WHI_SETUP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148662656921677205)
,p_event_id=>wwv_flow_imp.id(148662550290677204)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148597837661563544)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148923894677071404)
,p_name=>'DA_ERR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P505_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148923982721071405)
,p_event_id=>wwv_flow_imp.id(148923894677071404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P505_ERR.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-square-o'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P505_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(148924868544071414)
,p_name=>'DA_NUM'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P505_MONTO,P505_MONTO_ADICIONAL,P505_MONTO_WHI_SETUP'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(148924939902071415)
,p_event_id=>wwv_flow_imp.id(148924868544071414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(148925105191071417)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(148593531352563501)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P505_Cod_Usuario  := :P_Cod_Usuario;',
':P505_Cod_Empresa  := :P_Cod_Empresa;',
':P505_Nom_Empresa  := :P_Nom_Empresa;',
':P505_Cod_Sucursal := :P_Cod_Sucursal;',
':P505_Nom_Sucursal := :P_Nom_Sucursal;',
':P505_Cod_Modulo   := :P_Cod_Modulo;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
